.class public final Lcom/batch/android/g0/c$a;
.super Lcom/batch/android/g0/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/g0/c$f;
.implements Lcom/batch/android/g0/c$b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/batch/android/g0/d$h;

.field private final e:Lcom/batch/android/g0/d$h;

.field private final f:Lcom/batch/android/g0/d$f;

.field private final g:Lcom/batch/android/g0/d$f;

.field private final h:Lcom/batch/android/g0/d$g;

.field private final i:Lcom/batch/android/g0/d$e;

.field private final j:Lcom/batch/android/g0/d$b;

.field private final k:Lcom/batch/android/g0/d$a;

.field private final l:Lcom/batch/android/g0/d$e;

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/batch/android/g0/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private final n:I

.field private final o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/batch/android/g0/d$h;",
            "Lcom/batch/android/g0/d$h;",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$g;",
            "Lcom/batch/android/g0/d$e;",
            "Lcom/batch/android/g0/d$b;",
            "Lcom/batch/android/g0/d$a;",
            "Lcom/batch/android/g0/d$e;",
            "Ljava/util/Set<",
            "+",
            "Lcom/batch/android/g0/d$c;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/batch/android/g0/c$j;->c:Lcom/batch/android/g0/c$j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/batch/android/g0/c;-><init>(Lcom/batch/android/g0/c$j;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/batch/android/g0/c$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/g0/c$a;->d:Lcom/batch/android/g0/d$h;

    iput-object p3, p0, Lcom/batch/android/g0/c$a;->e:Lcom/batch/android/g0/d$h;

    iput-object p4, p0, Lcom/batch/android/g0/c$a;->f:Lcom/batch/android/g0/d$f;

    iput-object p5, p0, Lcom/batch/android/g0/c$a;->g:Lcom/batch/android/g0/d$f;

    iput-object p6, p0, Lcom/batch/android/g0/c$a;->h:Lcom/batch/android/g0/d$g;

    iput-object p7, p0, Lcom/batch/android/g0/c$a;->i:Lcom/batch/android/g0/d$e;

    iput-object p8, p0, Lcom/batch/android/g0/c$a;->j:Lcom/batch/android/g0/d$b;

    iput-object p9, p0, Lcom/batch/android/g0/c$a;->k:Lcom/batch/android/g0/d$a;

    iput-object p10, p0, Lcom/batch/android/g0/c$a;->l:Lcom/batch/android/g0/d$e;

    iput-object p11, p0, Lcom/batch/android/g0/c$a;->m:Ljava/util/Set;

    iput p12, p0, Lcom/batch/android/g0/c$a;->n:I

    iput p13, p0, Lcom/batch/android/g0/c$a;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;Lcom/batch/android/g0/d$e;Ljava/util/Set;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/batch/android/g0/d$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/batch/android/g0/d$b;-><init>([IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v0

    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    goto :goto_1

    :cond_0
    move-object/from16 v11, p8

    goto :goto_0

    .line 61
    :goto_1
    invoke-direct/range {v3 .. v16}, Lcom/batch/android/g0/c$a;-><init>(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/g0/c$a;Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;Lcom/batch/android/g0/d$e;Ljava/util/Set;IIILjava/lang/Object;)Lcom/batch/android/g0/c$a;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/batch/android/g0/c$a;->c:Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->d:Lcom/batch/android/g0/d$h;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/batch/android/g0/c$a;->e:Lcom/batch/android/g0/d$h;

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/batch/android/g0/c$a;->f:Lcom/batch/android/g0/d$f;

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/batch/android/g0/c$a;->g:Lcom/batch/android/g0/d$f;

    goto :goto_3

    :cond_4
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/batch/android/g0/c$a;->h:Lcom/batch/android/g0/d$g;

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/batch/android/g0/c$a;->i:Lcom/batch/android/g0/d$e;

    goto :goto_5

    :cond_6
    move-object/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/batch/android/g0/c$a;->j:Lcom/batch/android/g0/d$b;

    goto :goto_6

    :cond_7
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/batch/android/g0/c$a;->k:Lcom/batch/android/g0/d$a;

    goto :goto_7

    :cond_8
    move-object/from16 v8, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/batch/android/g0/c$a;->l:Lcom/batch/android/g0/d$e;

    goto :goto_8

    :cond_9
    move-object/from16 v9, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/batch/android/g0/c$a;->m:Ljava/util/Set;

    goto :goto_9

    :cond_a
    move-object/from16 v10, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_b

    iget v11, p0, Lcom/batch/android/g0/c$a;->n:I

    goto :goto_a

    :cond_b
    move/from16 v11, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/batch/android/g0/c$a;->o:I

    move/from16 p15, v0

    :goto_b
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move-object/from16 p13, v10

    move/from16 p14, v11

    goto :goto_c

    :cond_c
    move/from16 p15, p13

    goto :goto_b

    :goto_c
    invoke-virtual/range {p2 .. p15}, Lcom/batch/android/g0/c$a;->a(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)Lcom/batch/android/g0/c$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$a;->n:I

    return p0
.end method

.method public final B()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final C()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->f:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final D()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$a;->o:I

    return p0
.end method

.method public final E()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->g:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final F()Lcom/batch/android/g0/d$b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->j:Lcom/batch/android/g0/d$b;

    return-object p0
.end method

.method public final G()Lcom/batch/android/g0/d$e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->l:Lcom/batch/android/g0/d$e;

    return-object p0
.end method

.method public final H()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->e:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final I()Lcom/batch/android/g0/d$g;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->h:Lcom/batch/android/g0/d$g;

    return-object p0
.end method

.method public a()I
    .locals 0

    .line 147
    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->a(Lcom/batch/android/g0/c$f;)I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)Lcom/batch/android/g0/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/batch/android/g0/d$h;",
            "Lcom/batch/android/g0/d$h;",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$f;",
            "Lcom/batch/android/g0/d$g;",
            "Lcom/batch/android/g0/d$e;",
            "Lcom/batch/android/g0/d$b;",
            "Lcom/batch/android/g0/d$a;",
            "Lcom/batch/android/g0/d$e;",
            "Ljava/util/Set<",
            "+",
            "Lcom/batch/android/g0/d$c;",
            ">;II)",
            "Lcom/batch/android/g0/c$a;"
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/g0/c$a;

    invoke-direct/range {p0 .. p13}, Lcom/batch/android/g0/c$a;-><init>(Ljava/lang/String;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$h;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$f;Lcom/batch/android/g0/d$g;Lcom/batch/android/g0/d$e;Lcom/batch/android/g0/d$b;Lcom/batch/android/g0/d$a;Lcom/batch/android/g0/d$e;Ljava/util/Set;II)V

    return-object p0
.end method

.method public b()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->c(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->f(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->e(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->b(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/g0/c$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/g0/c$a;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->d:Lcom/batch/android/g0/d$h;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->d:Lcom/batch/android/g0/d$h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->e:Lcom/batch/android/g0/d$h;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->e:Lcom/batch/android/g0/d$h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->f:Lcom/batch/android/g0/d$f;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->f:Lcom/batch/android/g0/d$f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->g:Lcom/batch/android/g0/d$f;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->g:Lcom/batch/android/g0/d$f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->h:Lcom/batch/android/g0/d$g;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->h:Lcom/batch/android/g0/d$g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->i:Lcom/batch/android/g0/d$e;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->i:Lcom/batch/android/g0/d$e;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->j:Lcom/batch/android/g0/d$b;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->j:Lcom/batch/android/g0/d$b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->k:Lcom/batch/android/g0/d$a;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->k:Lcom/batch/android/g0/d$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->l:Lcom/batch/android/g0/d$e;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->l:Lcom/batch/android/g0/d$e;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/batch/android/g0/c$a;->m:Ljava/util/Set;

    iget-object v3, p1, Lcom/batch/android/g0/c$a;->m:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/batch/android/g0/c$a;->n:I

    iget v3, p1, Lcom/batch/android/g0/c$a;->n:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget p0, p0, Lcom/batch/android/g0/c$a;->o:I

    iget p1, p1, Lcom/batch/android/g0/c$a;->o:I

    if-eq p0, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public g()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$f$b;->d(Lcom/batch/android/g0/c$f;)Z

    move-result p0

    return p0
.end method

.method public h()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/batch/android/g0/d$c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->m:Ljava/util/Set;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/batch/android/g0/c$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/batch/android/g0/c$a;->d:Lcom/batch/android/g0/d$h;

    invoke-virtual {v2}, Lcom/batch/android/g0/d$h;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/batch/android/g0/c$a;->e:Lcom/batch/android/g0/d$h;

    invoke-virtual {v0}, Lcom/batch/android/g0/d$h;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/batch/android/g0/c$a;->f:Lcom/batch/android/g0/d$f;

    invoke-virtual {v2}, Lcom/batch/android/g0/d$f;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/batch/android/g0/c$a;->g:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0}, Lcom/batch/android/g0/d$f;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/batch/android/g0/c$a;->h:Lcom/batch/android/g0/d$g;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/batch/android/g0/d$g;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/batch/android/g0/c$a;->i:Lcom/batch/android/g0/d$e;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/batch/android/g0/c$a;->j:Lcom/batch/android/g0/d$b;

    invoke-virtual {v0}, Lcom/batch/android/g0/d$b;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/batch/android/g0/c$a;->k:Lcom/batch/android/g0/d$a;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/batch/android/g0/d$a;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/batch/android/g0/c$a;->l:Lcom/batch/android/g0/d$e;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/batch/android/g0/c$a;->m:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/batch/android/g0/c$a;->n:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/batch/android/g0/c$a;->o:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-static {p0}, Lcom/batch/android/g0/c$b$a;->a(Lcom/batch/android/g0/c$b;)Z

    move-result p0

    return p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Lcom/batch/android/g0/d$e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->l:Lcom/batch/android/g0/d$e;

    return-object p0
.end method

.method public final m()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/batch/android/g0/d$c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->m:Ljava/util/Set;

    return-object p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$a;->n:I

    return p0
.end method

.method public final o()I
    .locals 0

    iget p0, p0, Lcom/batch/android/g0/c$a;->o:I

    return p0
.end method

.method public final p()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->d:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final q()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->e:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final r()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->f:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final s()Lcom/batch/android/g0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->g:Lcom/batch/android/g0/d$f;

    return-object p0
.end method

.method public final t()Lcom/batch/android/g0/d$g;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->h:Lcom/batch/android/g0/d$g;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Button(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->d:Lcom/batch/android/g0/d$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->e:Lcom/batch/android/g0/d$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", margins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->f:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paddings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->g:Lcom/batch/android/g0/d$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->h:Lcom/batch/android/g0/d$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->i:Lcom/batch/android/g0/d$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->j:Lcom/batch/android/g0/d$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", border="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->k:Lcom/batch/android/g0/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->l:Lcom/batch/android/g0/d$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontDecorations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/batch/android/g0/c$a;->m:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/batch/android/g0/c$a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/batch/android/g0/c$a;->o:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lcom/batch/android/g0/d$e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->i:Lcom/batch/android/g0/d$e;

    return-object p0
.end method

.method public final v()Lcom/batch/android/g0/d$b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->j:Lcom/batch/android/g0/d$b;

    return-object p0
.end method

.method public final w()Lcom/batch/android/g0/d$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->k:Lcom/batch/android/g0/d$a;

    return-object p0
.end method

.method public final x()Lcom/batch/android/g0/d$e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->i:Lcom/batch/android/g0/d$e;

    return-object p0
.end method

.method public final y()Lcom/batch/android/g0/d$h;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->d:Lcom/batch/android/g0/d$h;

    return-object p0
.end method

.method public final z()Lcom/batch/android/g0/d$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/c$a;->k:Lcom/batch/android/g0/d$a;

    return-object p0
.end method
