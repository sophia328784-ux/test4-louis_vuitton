.class public final Lkotlin/reflect/jvm/internal/types/SimpleKType;
.super Lkotlin/reflect/jvm/internal/types/AbstractKType;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/KTypeBase;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002Bu\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0011\u0012\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/SimpleKType;",
        "Lkotlin/reflect/jvm/internal/types/AbstractKType;",
        "Lkotlin/jvm/internal/KTypeBase;",
        "Lkotlin/reflect/KClassifier;",
        "classifier",
        "",
        "Lkotlin/reflect/KTypeProjection;",
        "arguments",
        "",
        "isMarkedNullable",
        "",
        "annotations",
        "Lkotlin/reflect/KType;",
        "abbreviation",
        "isDefinitelyNotNullType",
        "isNothingType",
        "isSuspendFunctionType",
        "Lkotlin/reflect/KClass;",
        "mutableCollectionClass",
        "Lkotlin/Function0;",
        "Ljava/lang/reflect/Type;",
        "computeJavaType",
        "<init>",
        "(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V",
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


# instance fields
.field public final c:Lkotlin/reflect/KClassifier;

.field public final d:Ljava/util/List;

.field public final e:Z

.field public final f:Ljava/util/List;

.field public final g:Lkotlin/reflect/KType;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Lkotlin/reflect/KClass;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lkotlin/reflect/KType;",
            "ZZZ",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-direct {p0, p10}, Lkotlin/reflect/jvm/internal/types/AbstractKType;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 33
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->c:Lkotlin/reflect/KClassifier;

    .line 34
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->d:Ljava/util/List;

    .line 35
    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->e:Z

    .line 36
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->f:Ljava/util/List;

    .line 37
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->g:Lkotlin/reflect/KType;

    .line 38
    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->h:Z

    .line 39
    iput-boolean p7, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->i:Z

    .line 40
    iput-boolean p8, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->j:Z

    .line 41
    iput-object p9, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->k:Lkotlin/reflect/KClass;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v11, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    goto :goto_1

    :cond_0
    move-object/from16 v11, p10

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v11}, Lkotlin/reflect/jvm/internal/types/SimpleKType;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final A()Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final D(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 13

    new-instance v0, Lkotlin/reflect/jvm/internal/types/SimpleKType;

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->e:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/16 v11, 0x200

    const/4 v12, 0x0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->c:Lkotlin/reflect/KClassifier;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->d:Ljava/util/List;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->f:Ljava/util/List;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->g:Lkotlin/reflect/KType;

    iget-boolean v7, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->i:Z

    iget-boolean v8, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->j:Z

    iget-object v9, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->k:Lkotlin/reflect/KClass;

    const/4 v10, 0x0

    move v6, p1

    invoke-direct/range {v0 .. v12}, Lkotlin/reflect/jvm/internal/types/SimpleKType;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final G(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 13

    new-instance v0, Lkotlin/reflect/jvm/internal/types/SimpleKType;

    const/16 v11, 0x200

    const/4 v12, 0x0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->c:Lkotlin/reflect/KClassifier;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->d:Ljava/util/List;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->f:Ljava/util/List;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->g:Lkotlin/reflect/KType;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->i:Z

    iget-boolean v8, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->j:Z

    iget-object v9, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->k:Lkotlin/reflect/KClass;

    const/4 v10, 0x0

    move v3, p1

    invoke-direct/range {v0 .. v12}, Lkotlin/reflect/jvm/internal/types/SimpleKType;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final H()Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Lkotlin/reflect/KClassifier;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->c:Lkotlin/reflect/KClassifier;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->d:Ljava/util/List;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->e:Z

    return p0
.end method

.method public final g()Lkotlin/reflect/KType;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->g:Lkotlin/reflect/KType;

    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->f:Ljava/util/List;

    return-object p0
.end method

.method public final h()Lkotlin/reflect/KClass;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->k:Lkotlin/reflect/KClass;

    return-object p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->h:Z

    return p0
.end method

.method public final p()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->i:Z

    return p0
.end method

.method public final q()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->j:Z

    return p0
.end method
