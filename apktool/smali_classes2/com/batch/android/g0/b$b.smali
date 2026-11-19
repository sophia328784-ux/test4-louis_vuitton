.class public final Lcom/batch/android/g0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/batch/android/g0/d$h;

.field private final c:Lcom/batch/android/g0/d$h;


# direct methods
.method public constructor <init>(Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/g0/b$b;->b:Lcom/batch/android/g0/d$h;

    iput-object p2, p0, Lcom/batch/android/g0/b$b;->c:Lcom/batch/android/g0/d$h;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/g0/b$b;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;ILjava/lang/Object;)Lcom/batch/android/g0/b$b;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/batch/android/g0/b$b;->b:Lcom/batch/android/g0/d$h;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/batch/android/g0/b$b;->c:Lcom/batch/android/g0/d$h;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/g0/b$b;->a(Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;)Lcom/batch/android/g0/b$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;)Lcom/batch/android/g0/b$b;
    .locals 0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/b$b;

    invoke-direct {p0, p1, p2}, Lcom/batch/android/g0/b$b;-><init>(Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;)V

    return-object p0
.end method

.method public final a()Lcom/batch/android/g0/d$h;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/batch/android/g0/b$b;->b:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final b()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/b$b;->c:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final c()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/b$b;->c:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final d()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/b$b;->b:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/g0/b$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/g0/b$b;

    iget-object v1, p0, Lcom/batch/android/g0/b$b;->b:Lcom/batch/android/g0/d$h;

    iget-object v3, p1, Lcom/batch/android/g0/b$b;->b:Lcom/batch/android/g0/d$h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/batch/android/g0/b$b;->c:Lcom/batch/android/g0/d$h;

    iget-object p1, p1, Lcom/batch/android/g0/b$b;->c:Lcom/batch/android/g0/d$h;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/batch/android/g0/b$b;->b:Lcom/batch/android/g0/d$h;

    invoke-virtual {v0}, Lcom/batch/android/g0/d$h;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/batch/android/g0/b$b;->c:Lcom/batch/android/g0/d$h;

    invoke-virtual {p0}, Lcom/batch/android/g0/d$h;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Button(color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/g0/b$b;->b:Lcom/batch/android/g0/d$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/batch/android/g0/b$b;->c:Lcom/batch/android/g0/d$h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
