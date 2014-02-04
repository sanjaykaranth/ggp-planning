#include "../ff.h"
#include "rewardgoals.h"

void action_name(int index, char *name)
{
  /*copied from output.c*/
  Action *a = gop_conn[index].action;

  if ( !a->norm_operator &&
       !a->pseudo_action ) {
    sprintf(name,"REACH-GOAL");
  }
  else {
    sprintf(name,"%s", a->name ); 
  }
  
}


/*added*/
void print_sub_plan( int p )
{  

  int i;

  printf("\n\nff: found legal plan as follows");
  printf("\n\nstep ");
  for ( i = 0; i < gnum_plans_ops[p]; i++ ) {
    printf("%4d: ", i);
    print_op_name( gplans_ops[p][i] );
    printf("\n     ");
  }

}
/*~added*/
