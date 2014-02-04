
/*from ff.h*/

#define MAX_PLAN_NUM 10


extern int gplans_ops[MAX_PLAN_NUM][MAX_PLAN_LENGTH]; /*added*/
extern int gnum_plans_ops[MAX_PLAN_NUM]; /*added*/
extern int gcurrent_plan; /*added*/

/* */

void print_sub_plan( int ); /*added*/
