.class public abstract Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;
.super Lcom/vuitton/android/presentation/screen/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;->o:Z

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;->v()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;-><init>(I)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;->o:Z

    .line 12
    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;->v()V

    return-void
.end method

.method private v()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity$1;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;->o:Z

    invoke-interface {p0}, Ldagger/hilt/internal/GeneratedComponentManager;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity_GeneratedInjector;

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity_GeneratedInjector;->R(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;)V

    :cond_0
    return-void
.end method
