.class public Lcom/networkbench/nbslens/nativecrashlib/NativeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNativeVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.10"

    return-object v0
.end method

.method public static initNativeCrash()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->getNativeContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->getNativeContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/nbslens/nbsnativecrashlib/NBSNativeCrash;->init(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "error initNativeCrash context is null"

    invoke-static {v0}, Lv7;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
