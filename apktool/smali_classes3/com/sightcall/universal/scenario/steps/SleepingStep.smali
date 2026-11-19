.class public Lcom/sightcall/universal/scenario/steps/SleepingStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"


# instance fields
.field private final delayMillis:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    iput p1, p0, Lcom/sightcall/universal/scenario/steps/SleepingStep;->delayMillis:I

    return-void
.end method

.method public static synthetic access$000(Lcom/sightcall/universal/scenario/steps/SleepingStep;[Lcom/sightcall/universal/scenario/Step;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 0

    invoke-super {p0}, Lcom/sightcall/universal/scenario/Step;->interrupt()V

    return-void
.end method

.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-super {p0}, Lcom/sightcall/universal/scenario/Step;->resume()V

    return-void
.end method

.method public run()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sightcall/universal/scenario/steps/SleepingStep$1;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/scenario/steps/SleepingStep$1;-><init>(Lcom/sightcall/universal/scenario/steps/SleepingStep;)V

    iget p0, p0, Lcom/sightcall/universal/scenario/steps/SleepingStep;->delayMillis:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
