.class public Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/useraction/InternalUserAction;


# instance fields
.field public final a:Lcom/dynatrace/android/agent/DTXAutoAction;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/DTXAutoAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    return p0
.end method

.method public final b()J
    .locals 2

    iget-object p0, p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    return-wide v0
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget-object v0, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->I:Ljava/util/Timer;

    if-nez v0, :cond_0

    sget v0, Lcom/dynatrace/android/agent/DTXAutoAction;->K:I

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/DTXAutoAction;->H(I)V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    return p0
.end method

.method public final e(Lcom/dynatrace/android/agent/DTXActionImpl;)V
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/DTXActionImpl;->o(Lcom/dynatrace/android/agent/CustomSegment;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/android/agent/DTXActionImpl;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 1

    sget v0, Lcom/dynatrace/android/agent/DTXAutoAction;->K:I

    iget-object p0, p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/DTXAutoAction;->H(I)V

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXAutoAction;->D()V

    return-void
.end method

.method public final getSession()Lcom/dynatrace/android/agent/data/Session;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    return-object p0
.end method
