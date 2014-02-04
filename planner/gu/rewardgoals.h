/*#define REWARD_DEBUG 1*/

#define MAX_REWARD_GOALS 20

#define MAX_PLAN_NUM 20



struct RewardGoal {
  State goal_state;
  int reward;
  int ignore; /*flag if the goal has been already achieved or higher goals have been achieved */
};


extern int gplans_ops[MAX_PLAN_NUM][MAX_PLAN_LENGTH]; /*added*/
extern int gplans_values[MAX_PLAN_NUM];
extern int gnum_plans_ops[MAX_PLAN_NUM]; /*added*/
extern int gcurrent_plan; /*added*/

/*
extern struct RewardGoal greward_goals[MAX_REWARD_GOALS];
extern int gnum_reward_goals;
*/

void initialize_rewardgoals();

int get_reward_heuristic(State *S);

Bool is_goal_true(State *S, State *G);

void action_name(int,char*);

void print_sub_plan( int ); /*added*/

void set_goal_achieved( int points);

int is_goal_achieved(int points);
