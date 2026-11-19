.class Lcom/android/wiimu/onlineprotect/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/onlineprotect/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/onlineprotect/c;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/onlineprotect/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/onlineprotect/c$a;->a:Lcom/android/wiimu/onlineprotect/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->isAppOnForeground()Z

    :try_start_0
    iget-object p0, p0, Lcom/android/wiimu/onlineprotect/c$a;->a:Lcom/android/wiimu/onlineprotect/c;

    invoke-static {p0}, Lcom/android/wiimu/onlineprotect/c;->a(Lcom/android/wiimu/onlineprotect/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
