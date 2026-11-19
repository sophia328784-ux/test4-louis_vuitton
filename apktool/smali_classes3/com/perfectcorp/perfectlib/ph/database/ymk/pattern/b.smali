.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$a;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;
    }
.end annotation


# static fields
.field public static final j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Z)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V
    .locals 10

    .line 22
    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->d:Ljava/lang/String;

    iput p5, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->e:I

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->i:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    :try_start_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v0, Lxx0;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lxx0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
