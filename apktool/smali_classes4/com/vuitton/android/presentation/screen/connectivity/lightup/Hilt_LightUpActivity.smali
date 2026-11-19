.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;
.source "SourceFile"


# instance fields
.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity;->p:Z

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity;->v()V

    return-void
.end method

.method private v()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity;->p:Z

    invoke-interface {p0}, Ldagger/hilt/internal/GeneratedComponentManager;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity_GeneratedInjector;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity_GeneratedInjector;->s0(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V

    :cond_0
    return-void
.end method

.method public abstract synthetic J()V
.end method

.method public abstract synthetic K()V
.end method

.method public abstract synthetic L(Z)V
.end method

.method public abstract synthetic M()V
.end method

.method public abstract synthetic N(Lcom/lightup/sdk/device/enums/PairOrientation;)V
.end method
