.class public final Lcoil3/request/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0008\u0016\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001f\u0008\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000c\u0008\u0002\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil3/request/ImageRequest$Builder;",
        "",
        "Landroid/content/Context;",
        "Lcoil3/PlatformContext;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcoil3/request/ImageRequest;",
        "request",
        "(Lcoil3/request/ImageRequest;Landroid/content/Context;)V",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcoil3/request/ImageRequest$Defaults;

.field public c:Ljava/lang/Object;

.field public d:Lcoil3/target/Target;

.field public e:Lcoil3/request/ImageRequest$Listener;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/lang/String;

.field public final i:Lokio/FileSystem;

.field public final j:Lkotlin/Pair;

.field public final k:Lcoil3/decode/Decoder$Factory;

.field public l:Lkotlin/coroutines/CoroutineContext;

.field public m:Lkotlin/coroutines/CoroutineContext;

.field public n:Lkotlin/coroutines/CoroutineContext;

.field public final o:Lcoil3/request/CachePolicy;

.field public final p:Lcoil3/request/CachePolicy;

.field public final q:Lcoil3/request/CachePolicy;

.field public final r:Lcoil3/memory/MemoryCache$Key;

.field public s:Lkotlin/jvm/functions/Function1;

.field public t:Lkotlin/jvm/functions/Function1;

.field public final u:Lkotlin/jvm/functions/Function1;

.field public v:Lcoil3/size/SizeResolver;

.field public w:Lcoil3/size/Scale;

.field public x:Lcoil3/size/Precision;

.field public y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->a:Landroid/content/Context;

    .line 110
    sget-object p1, Lcoil3/request/ImageRequest$Defaults;->o:Lcoil3/request/ImageRequest$Defaults;

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->d:Lcoil3/target/Target;

    .line 113
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->e:Lcoil3/request/ImageRequest$Listener;

    .line 114
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->f:Ljava/lang/String;

    .line 115
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->g:Ljava/util/Map;

    .line 116
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->h:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->i:Lokio/FileSystem;

    .line 118
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->j:Lkotlin/Pair;

    .line 119
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->k:Lcoil3/decode/Decoder$Factory;

    .line 120
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->l:Lkotlin/coroutines/CoroutineContext;

    .line 121
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->m:Lkotlin/coroutines/CoroutineContext;

    .line 122
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->n:Lkotlin/coroutines/CoroutineContext;

    .line 123
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->o:Lcoil3/request/CachePolicy;

    .line 124
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->p:Lcoil3/request/CachePolicy;

    .line 125
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->q:Lcoil3/request/CachePolicy;

    .line 126
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->r:Lcoil3/memory/MemoryCache$Key;

    .line 127
    invoke-static {}, Lcoil3/util/UtilsKt;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->s:Lkotlin/jvm/functions/Function1;

    .line 128
    invoke-static {}, Lcoil3/util/UtilsKt;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->t:Lkotlin/jvm/functions/Function1;

    .line 129
    invoke-static {}, Lcoil3/util/UtilsKt;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->u:Lkotlin/jvm/functions/Function1;

    .line 130
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->v:Lcoil3/size/SizeResolver;

    .line 131
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->w:Lcoil3/size/Scale;

    .line 132
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->x:Lcoil3/size/Precision;

    .line 133
    sget-object p1, Lcoil3/Extras;->b:Lcoil3/Extras;

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->y:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcoil3/request/ImageRequest;)V
    .locals 2

    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcoil3/request/ImageRequest$Builder;-><init>(Lcoil3/request/ImageRequest;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil3/request/ImageRequest;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->a:Landroid/content/Context;

    iget-object p2, p1, Lcoil3/request/ImageRequest;->z:Lcoil3/request/ImageRequest$Defaults;

    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object p2, p1, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    iget-object p2, p1, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->d:Lcoil3/target/Target;

    iget-object p2, p1, Lcoil3/request/ImageRequest;->d:Lcoil3/request/ImageRequest$Listener;

    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->e:Lcoil3/request/ImageRequest$Listener;

    iget-object p2, p1, Lcoil3/request/ImageRequest;->e:Ljava/lang/String;

    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->f:Ljava/lang/String;

    iget-object p2, p1, Lcoil3/request/ImageRequest;->f:Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->g:Ljava/util/Map;

    iget-object p2, p1, Lcoil3/request/ImageRequest;->g:Ljava/lang/String;

    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->h:Ljava/lang/String;

    iget-object p2, p1, Lcoil3/request/ImageRequest;->y:Lcoil3/request/ImageRequest$Defined;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->a:Lokio/FileSystem;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->i:Lokio/FileSystem;

    iget-object v0, p1, Lcoil3/request/ImageRequest;->i:Lkotlin/Pair;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->j:Lkotlin/Pair;

    iget-object v0, p1, Lcoil3/request/ImageRequest;->j:Lcoil3/decode/Decoder$Factory;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->k:Lcoil3/decode/Decoder$Factory;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->b:Lkotlin/coroutines/CoroutineContext;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->l:Lkotlin/coroutines/CoroutineContext;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->c:Lkotlin/coroutines/CoroutineContext;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->m:Lkotlin/coroutines/CoroutineContext;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->d:Lkotlin/coroutines/CoroutineContext;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->n:Lkotlin/coroutines/CoroutineContext;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->e:Lcoil3/request/CachePolicy;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->o:Lcoil3/request/CachePolicy;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->f:Lcoil3/request/CachePolicy;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->p:Lcoil3/request/CachePolicy;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->g:Lcoil3/request/CachePolicy;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->q:Lcoil3/request/CachePolicy;

    iget-object v0, p1, Lcoil3/request/ImageRequest;->q:Lcoil3/memory/MemoryCache$Key;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->r:Lcoil3/memory/MemoryCache$Key;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->h:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->s:Lkotlin/jvm/functions/Function1;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->i:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->t:Lkotlin/jvm/functions/Function1;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->j:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->u:Lkotlin/jvm/functions/Function1;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->k:Lcoil3/size/SizeResolver;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->v:Lcoil3/size/SizeResolver;

    iget-object v0, p2, Lcoil3/request/ImageRequest$Defined;->l:Lcoil3/size/Scale;

    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->w:Lcoil3/size/Scale;

    iget-object p2, p2, Lcoil3/request/ImageRequest$Defined;->m:Lcoil3/size/Precision;

    iput-object p2, p0, Lcoil3/request/ImageRequest$Builder;->x:Lcoil3/size/Precision;

    iget-object p1, p1, Lcoil3/request/ImageRequest;->x:Lcoil3/Extras;

    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->y:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcoil3/request/ImageRequest;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 106
    iget-object p2, p1, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    .line 107
    :cond_0
    invoke-direct {p0, p1, p2}, Lcoil3/request/ImageRequest$Builder;-><init>(Lcoil3/request/ImageRequest;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Lcoil3/request/ImageRequest;
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lcoil3/request/NullRequestData;->a:Lcoil3/request/NullRequestData;

    :cond_0
    move-object v4, v1

    iget-object v5, v0, Lcoil3/request/ImageRequest$Builder;->d:Lcoil3/target/Target;

    iget-object v6, v0, Lcoil3/request/ImageRequest$Builder;->e:Lcoil3/request/ImageRequest$Listener;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->g:Ljava/util/Map;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcoil3/util/Collections_jvmCommonKt;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_1
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_11

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :goto_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->i:Lokio/FileSystem;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->a:Lokio/FileSystem;

    :cond_2
    move-object v10, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->o:Lcoil3/request/CachePolicy;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->e:Lcoil3/request/CachePolicy;

    :cond_3
    move-object/from16 v16, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->p:Lcoil3/request/CachePolicy;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->f:Lcoil3/request/CachePolicy;

    :cond_4
    move-object/from16 v17, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->q:Lcoil3/request/CachePolicy;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->g:Lcoil3/request/CachePolicy;

    :cond_5
    move-object/from16 v18, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->l:Lkotlin/coroutines/CoroutineContext;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->b:Lkotlin/coroutines/CoroutineContext;

    :cond_6
    move-object v13, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->m:Lkotlin/coroutines/CoroutineContext;

    if-nez v1, :cond_7

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->c:Lkotlin/coroutines/CoroutineContext;

    :cond_7
    move-object v14, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->n:Lkotlin/coroutines/CoroutineContext;

    if-nez v1, :cond_8

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->d:Lkotlin/coroutines/CoroutineContext;

    :cond_8
    move-object v15, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->s:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_9

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->h:Lkotlin/jvm/functions/Function1;

    :cond_9
    move-object/from16 v20, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->t:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_a

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->i:Lkotlin/jvm/functions/Function1;

    :cond_a
    move-object/from16 v21, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->u:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_b

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->j:Lkotlin/jvm/functions/Function1;

    :cond_b
    move-object/from16 v22, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->v:Lcoil3/size/SizeResolver;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->k:Lcoil3/size/SizeResolver;

    :cond_c
    move-object/from16 v23, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->w:Lcoil3/size/Scale;

    if-nez v1, :cond_d

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->l:Lcoil3/size/Scale;

    :cond_d
    move-object/from16 v24, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->x:Lcoil3/size/Precision;

    if-nez v1, :cond_e

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object v1, v1, Lcoil3/request/ImageRequest$Defaults;->m:Lcoil3/size/Precision;

    :cond_e
    move-object/from16 v25, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->y:Ljava/lang/Object;

    instance-of v2, v1, Lcoil3/Extras$Builder;

    if-eqz v2, :cond_f

    check-cast v1, Lcoil3/Extras$Builder;

    invoke-virtual {v1}, Lcoil3/Extras$Builder;->a()Lcoil3/Extras;

    move-result-object v1

    :goto_2
    move-object/from16 v26, v1

    goto :goto_3

    :cond_f
    instance-of v2, v1, Lcoil3/Extras;

    if-eqz v2, :cond_10

    check-cast v1, Lcoil3/Extras;

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->l:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, v0, Lcoil3/request/ImageRequest$Builder;->m:Lkotlin/coroutines/CoroutineContext;

    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->n:Lkotlin/coroutines/CoroutineContext;

    iget-object v7, v0, Lcoil3/request/ImageRequest$Builder;->s:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lcoil3/request/ImageRequest$Builder;->t:Lkotlin/jvm/functions/Function1;

    iget-object v11, v0, Lcoil3/request/ImageRequest$Builder;->v:Lcoil3/size/SizeResolver;

    iget-object v12, v0, Lcoil3/request/ImageRequest$Builder;->w:Lcoil3/size/Scale;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->x:Lcoil3/size/Precision;

    new-instance v27, Lcoil3/request/ImageRequest$Defined;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->i:Lokio/FileSystem;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->o:Lcoil3/request/CachePolicy;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->p:Lcoil3/request/CachePolicy;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->q:Lcoil3/request/CachePolicy;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->u:Lkotlin/jvm/functions/Function1;

    move-object/from16 v37, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v35, v7

    move-object/from16 v36, v9

    move-object/from16 v38, v11

    move-object/from16 v39, v12

    invoke-direct/range {v27 .. v40}, Lcoil3/request/ImageRequest$Defined;-><init>(Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;)V

    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    new-instance v2, Lcoil3/request/ImageRequest;

    const/16 v29, 0x0

    iget-object v3, v0, Lcoil3/request/ImageRequest$Builder;->a:Landroid/content/Context;

    iget-object v7, v0, Lcoil3/request/ImageRequest$Builder;->f:Ljava/lang/String;

    iget-object v9, v0, Lcoil3/request/ImageRequest$Builder;->h:Ljava/lang/String;

    iget-object v11, v0, Lcoil3/request/ImageRequest$Builder;->j:Lkotlin/Pair;

    iget-object v12, v0, Lcoil3/request/ImageRequest$Builder;->k:Lcoil3/decode/Decoder$Factory;

    iget-object v0, v0, Lcoil3/request/ImageRequest$Builder;->r:Lcoil3/memory/MemoryCache$Key;

    move-object/from16 v19, v0

    move-object/from16 v28, v1

    invoke-direct/range {v2 .. v29}, Lcoil3/request/ImageRequest;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcoil3/target/Target;Lcoil3/request/ImageRequest$Listener;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lokio/FileSystem;Lkotlin/Pair;Lcoil3/decode/Decoder$Factory;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/memory/MemoryCache$Key;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcoil3/size/SizeResolver;Lcoil3/size/Scale;Lcoil3/size/Precision;Lcoil3/Extras;Lcoil3/request/ImageRequest$Defined;Lcoil3/request/ImageRequest$Defaults;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_10
    invoke-static {}, La61;->h()V

    return-object v3

    :cond_11
    invoke-static {}, La61;->h()V

    return-object v3
.end method

.method public final b()Lcoil3/Extras$Builder;
    .locals 2

    iget-object v0, p0, Lcoil3/request/ImageRequest$Builder;->y:Ljava/lang/Object;

    instance-of v1, v0, Lcoil3/Extras$Builder;

    if-eqz v1, :cond_0

    check-cast v0, Lcoil3/Extras$Builder;

    return-object v0

    :cond_0
    instance-of v1, v0, Lcoil3/Extras;

    if-eqz v1, :cond_1

    check-cast v0, Lcoil3/Extras;

    new-instance v1, Lcoil3/Extras$Builder;

    invoke-direct {v1, v0}, Lcoil3/Extras$Builder;-><init>(Lcoil3/Extras;)V

    iput-object v1, p0, Lcoil3/request/ImageRequest$Builder;->y:Ljava/lang/Object;

    return-object v1

    :cond_1
    invoke-static {}, La61;->h()V

    const/4 p0, 0x0

    return-object p0
.end method
