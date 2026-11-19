.class public final Lkotlin/reflect/jvm/internal/types/FlexibleKType;
.super Lkotlin/reflect/jvm/internal/types/AbstractKType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/FlexibleKType;",
        "Lkotlin/reflect/jvm/internal/types/AbstractKType;",
        "Companion",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final f:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;


# instance fields
.field public final c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

.field public final d:Lkotlin/reflect/jvm/internal/types/AbstractKType;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->f:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p4}, Lkotlin/reflect/jvm/internal/types/AbstractKType;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->d:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->e:Z

    return-void
.end method


# virtual methods
.method public final A()Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    return-object p0
.end method

.method public final D(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->D(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->d:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->D(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->f:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->e:Z

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, v1}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->a(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p0

    return-object p0
.end method

.method public final G(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->G(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->d:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->G(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->f:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->e:Z

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, v1}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->a(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p0

    return-object p0
.end method

.method public final H()Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->d:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    return-object p0
.end method

.method public final a()Lkotlin/reflect/KClassifier;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-interface {p0}, Lkotlin/reflect/KType;->a()Lkotlin/reflect/KClassifier;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-interface {p0}, Lkotlin/reflect/KType;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-interface {p0}, Lkotlin/reflect/KType;->d()Z

    move-result p0

    return p0
.end method

.method public final g()Lkotlin/reflect/KType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-interface {p0}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lkotlin/reflect/KClass;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->c:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->h()Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public final l()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->e:Z

    return p0
.end method

.method public final y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
