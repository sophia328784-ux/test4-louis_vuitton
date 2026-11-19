.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
