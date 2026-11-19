.class public final Lcom/batch/android/g0/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/g0/d$g$a;,
        Lcom/batch/android/g0/d$g$b;,
        Lcom/batch/android/g0/d$g$c;
    }
.end annotation


# static fields
.field public static final d:Lcom/batch/android/g0/d$g$a;

.field private static final e:Ljava/lang/String; = "auto"

.field private static final f:Ljava/lang/String; = "fill"

.field private static final g:Ljava/lang/String; = "%"

.field private static final h:Ljava/lang/String; = "px"


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/batch/android/g0/d$g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/batch/android/g0/d$g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/batch/android/g0/d$g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/batch/android/g0/d$g;->d:Lcom/batch/android/g0/d$g$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    const-string v0, "%"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/batch/android/g0/d$g$b;->c:Lcom/batch/android/g0/d$g$b;

    goto :goto_0

    :cond_0
    const-string v0, "px"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/batch/android/g0/d$g$b;->b:Lcom/batch/android/g0/d$g$b;

    goto :goto_0

    :cond_1
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/batch/android/g0/d$g$b;->d:Lcom/batch/android/g0/d$g$b;

    goto :goto_0

    :cond_2
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/batch/android/g0/d$g$b;->e:Lcom/batch/android/g0/d$g$b;

    :goto_0
    iput-object p1, p0, Lcom/batch/android/g0/d$g;->c:Lcom/batch/android/g0/d$g$b;

    return-void

    :cond_3
    const-string p0, "Invalid size value: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(Lcom/batch/android/g0/d$g;Ljava/lang/String;ILjava/lang/Object;)Lcom/batch/android/g0/d$g;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/batch/android/g0/d$g;->a(Ljava/lang/String;)Lcom/batch/android/g0/d$g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/batch/android/g0/d$g;
    .locals 0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/d$g;

    invoke-direct {p0, p1}, Lcom/batch/android/g0/d$g;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/batch/android/g0/d$g$b;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/batch/android/g0/d$g;->c:Lcom/batch/android/g0/d$g$b;

    return-void
.end method

.method public final b()F
    .locals 2

    iget-object v0, p0, Lcom/batch/android/g0/d$g;->c:Lcom/batch/android/g0/d$g$b;

    sget-object v1, Lcom/batch/android/g0/d$g$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p0, 0x3

    const/4 v1, 0x0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object p0, p0, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    const-string v0, "px"

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    const-string v0, "%"

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public final c()Lcom/batch/android/g0/d$g$b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/d$g;->c:Lcom/batch/android/g0/d$g$b;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/d$g;->c:Lcom/batch/android/g0/d$g$b;

    sget-object v0, Lcom/batch/android/g0/d$g$b;->d:Lcom/batch/android/g0/d$g$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/g0/d$g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/g0/d$g;

    iget-object p0, p0, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/d$g;->c:Lcom/batch/android/g0/d$g$b;

    sget-object v0, Lcom/batch/android/g0/d$g$b;->e:Lcom/batch/android/g0/d$g$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/d$g;->c:Lcom/batch/android/g0/d$g$b;

    sget-object v0, Lcom/batch/android/g0/d$g$b;->c:Lcom/batch/android/g0/d$g$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/d$g;->c:Lcom/batch/android/g0/d$g$b;

    sget-object v0, Lcom/batch/android/g0/d$g$b;->b:Lcom/batch/android/g0/d$g$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/g0/d$g;->b:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
