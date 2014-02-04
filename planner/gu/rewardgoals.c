
#include "../ff.h"
#include "../relax.h"
#include "rewardgoals.h"


int gplans_ops[MAX_PLAN_NUM][MAX_PLAN_LENGTH]; /*added*/
int gplans_values[MAX_PLAN_NUM];
int gnum_plans_ops[MAX_PLAN_NUM]; /*added*/
int gcurrent_plan=-1; /*added*/


struct RewardGoal greward_goals[MAX_REWARD_GOALS];
int gnum_reward_goals;


void initialize_rewardgoals()
{
  printf("%d==%d",gnum_relevant_facts,gnum_ft_conn);
  int i;
  
  Fact F;
  
  gnum_reward_goals=0;

  for(i=0;i<gnum_relevant_facts;i++)
    {

            F=grelevant_facts[i];
      
	   

      /*(RGOAL G20)*/ 

	    if((F.predicate>=0) && (strcmp(gpredicates[F.predicate],"RGOAL")==0))
	{
	  int points=0;
  	  points=atoi( gconstants[F.args[0]] + 1);

  	  if(points>0){

	    printf("reward goal #%d :\n",gnum_reward_goals);

	    make_state(&greward_goals[gnum_reward_goals].goal_state,1);
	  
	    greward_goals[gnum_reward_goals].goal_state.num_F=1;
	    
	    greward_goals[gnum_reward_goals].goal_state.F[0]=i;
	    	    
	    greward_goals[gnum_reward_goals].reward=points;
	    greward_goals[gnum_reward_goals].ignore=0;
	    
	    printf("reward goal: %s:%d \n", gconstants[F.args[0]], greward_goals[gnum_reward_goals].reward);
	    
	    gnum_reward_goals++;
	  }
        }
      
    }


}

int get_reward_heuristic(State *S)
{
  
  int i;

  int h=0;
  int th;
  for(i=0;i<gnum_reward_goals;i++)
    {

      if(greward_goals[i].ignore==1) continue;

      th=get_1P(S,&(greward_goals[i].goal_state));

      #ifdef REWARD_DEBUG
      
      printf("distance from (goal %d): %d \n", greward_goals[i].reward, th);

      #endif

      /*printf("distance to %dth goal:%d",i+1,th);      */
      if(th==INFINITY) return INFINITY; /*not right- one of the goals is unreachable */

      
      h+= greward_goals[i].reward*th;
    }
  

  return h;
}

Bool is_goal_true(State *S, State *G)
{
  
  int i,j;

  Bool present=FALSE;


  for(i=0;i<(G->num_F);i++)
    {

      present=FALSE;
    for(j=0; j<(S->num_F);j++)
      {
	if(S->F[j] == G->F[i]) present=TRUE;
      }

    if(present==FALSE) return FALSE;
    }
  
  printf("disjunctive goal true!\n");
  return TRUE;

}

void set_goal_achieved(int points)
{
  int i;
  
  for(i=0;i<gnum_reward_goals; i++)
    {
      if(greward_goals[i].reward<=points) 
	greward_goals[i].ignore=1;
    }
  
}

int is_goal_achieved(int points)
{
  int i;

  for(i=0;i<gnum_reward_goals;i++)
    if(greward_goals[i].reward==points) return greward_goals[i].ignore==1;

  printf("\nERROR: shouldnt reach here!");
}
