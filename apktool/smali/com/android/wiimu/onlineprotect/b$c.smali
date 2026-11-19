.class Lcom/android/wiimu/onlineprotect/b$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/onlineprotect/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/onlineprotect/b;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/onlineprotect/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/onlineprotect/b$c;->a:Lcom/android/wiimu/onlineprotect/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->isAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wiimu/onlineprotect/b$c;->a:Lcom/android/wiimu/onlineprotect/b;

    invoke-static {p0}, Lcom/android/wiimu/onlineprotect/b;->c(Lcom/android/wiimu/onlineprotect/b;)V

    :cond_0
    return-void
.end method
