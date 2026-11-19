.class public final Lcom/batch/android/g0/c$f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/c$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lcom/batch/android/g0/c$f;)I
    .locals 1

    invoke-interface {p0}, Lcom/batch/android/g0/c$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/batch/android/g0/c$f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-interface {p0}, Lcom/batch/android/g0/c$f;->g()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/batch/android/g0/c$f;)Z
    .locals 1

    invoke-interface {p0}, Lcom/batch/android/g0/c$f;->h()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lcom/batch/android/g0/d$c;->b:Lcom/batch/android/g0/d$c;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/batch/android/g0/c$f;)Z
    .locals 1

    invoke-interface {p0}, Lcom/batch/android/g0/c$f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/batch/android/g0/c$f;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lcom/batch/android/g0/c$f;)Z
    .locals 1

    invoke-interface {p0}, Lcom/batch/android/g0/c$f;->h()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lcom/batch/android/g0/d$c;->c:Lcom/batch/android/g0/d$c;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Lcom/batch/android/g0/c$f;)Z
    .locals 1

    invoke-interface {p0}, Lcom/batch/android/g0/c$f;->h()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lcom/batch/android/g0/d$c;->e:Lcom/batch/android/g0/d$c;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static f(Lcom/batch/android/g0/c$f;)Z
    .locals 1

    invoke-interface {p0}, Lcom/batch/android/g0/c$f;->h()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lcom/batch/android/g0/d$c;->d:Lcom/batch/android/g0/d$c;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
