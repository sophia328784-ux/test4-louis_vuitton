.class Lcom/dynatrace/android/agent/DTXAutoAction$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field intervals:I

.field final synthetic this$0:Lcom/dynatrace/android/agent/DTXAutoAction;

.field final synthetic val$execOnEachInterval:Z

.field final synthetic val$numPeriods:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/DTXAutoAction;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->this$0:Lcom/dynatrace/android/agent/DTXAutoAction;

    iput p2, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->val$numPeriods:I

    iput-boolean p3, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->val$execOnEachInterval:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput p2, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->intervals:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->intervals:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->intervals:I

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->val$execOnEachInterval:Z

    if-nez v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->this$0:Lcom/dynatrace/android/agent/DTXAutoAction;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/DTXAutoAction;->z()V

    :cond_1
    iget-object v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->this$0:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget p0, p0, Lcom/dynatrace/android/agent/DTXAutoAction$1;->intervals:I

    sget-object v1, Lcom/dynatrace/android/agent/DTXAutoAction;->J:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/dynatrace/android/agent/DTXAutoAction;->E(I)V

    return-void
.end method
