.class public final Lcom/batch/android/g0/c$h;
.super Lcom/batch/android/g0/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/g0/c$b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field private final c:Lcom/batch/android/g0/d$g;


# direct methods
.method public constructor <init>(Lcom/batch/android/g0/d$g;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/batch/android/g0/c$j;->g:Lcom/batch/android/g0/c$j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/batch/android/g0/c;-><init>(Lcom/batch/android/g0/c$j;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/batch/android/g0/c$h;->c:Lcom/batch/android/g0/d$g;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/g0/c$h;Lcom/batch/android/g0/d$g;ILjava/lang/Object;)Lcom/batch/android/g0/c$h;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/batch/android/g0/c$h;->c:Lcom/batch/android/g0/d$g;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/batch/android/g0/c$h;->a(Lcom/batch/android/g0/d$g;)Lcom/batch/android/g0/c$h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/batch/android/g0/d$g;)Lcom/batch/android/g0/c$h;
    .locals 0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/c$h;

    invoke-direct {p0, p1}, Lcom/batch/android/g0/c$h;-><init>(Lcom/batch/android/g0/d$g;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/g0/c$h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/g0/c$h;

    iget-object p0, p0, Lcom/batch/android/g0/c$h;->c:Lcom/batch/android/g0/d$g;

    iget-object p1, p1, Lcom/batch/android/g0/c$h;->c:Lcom/batch/android/g0/d$g;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$h;->c:Lcom/batch/android/g0/d$g;

    invoke-virtual {p0}, Lcom/batch/android/g0/d$g;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$b$a;->a(Lcom/batch/android/g0/c$b;)Z

    move-result p0

    return p0
.end method

.method public final k()Lcom/batch/android/g0/d$g;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$h;->c:Lcom/batch/android/g0/d$g;

    return-object p0
.end method

.method public final l()Lcom/batch/android/g0/d$g;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$h;->c:Lcom/batch/android/g0/d$g;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spacer(height="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/g0/c$h;->c:Lcom/batch/android/g0/d$g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
