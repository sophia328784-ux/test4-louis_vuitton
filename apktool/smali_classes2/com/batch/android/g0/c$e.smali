.class public final Lcom/batch/android/g0/c$e;
.super Ljava/lang/Object;
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
    name = "e"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v2, v0, v1}, Lcom/batch/android/g0/c$e;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/batch/android/g0/c$e;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/batch/android/g0/c$e;-><init>(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/g0/c$e;ZILjava/lang/Object;)Lcom/batch/android/g0/c$e;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/batch/android/g0/c$e;->b:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/batch/android/g0/c$e;->a(Z)Lcom/batch/android/g0/c$e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Z)Lcom/batch/android/g0/c$e;
    .locals 0

    .line 11
    new-instance p0, Lcom/batch/android/g0/c$e;

    invoke-direct {p0, p1}, Lcom/batch/android/g0/c$e;-><init>(Z)V

    return-object p0
.end method

.method public final a()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/batch/android/g0/c$e;->b:Z

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/g0/c$e;->b:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/g0/c$e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/g0/c$e;

    iget-boolean p0, p0, Lcom/batch/android/g0/c$e;->b:Z

    iget-boolean p1, p1, Lcom/batch/android/g0/c$e;->b:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/g0/c$e;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/g0/c$e;->b:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EmptySpacer(empty="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/batch/android/g0/c$e;->b:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
