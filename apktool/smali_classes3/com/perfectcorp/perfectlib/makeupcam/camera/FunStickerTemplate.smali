.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;
    }
.end annotation


# static fields
.field public static final e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

.field public static final f:Ljava/util/List;


# instance fields
.field public transient a:Ljava/util/List;

.field private action_hint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private action_hint_image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final transient b:Ljava/util/ArrayList;

.field public final transient c:Ljava/util/ArrayList;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public transient d:Ljava/lang/String;

.field private extra_event:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;",
            ">;"
        }
    .end annotation
.end field

.field private face_distortion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;",
            ">;"
        }
    .end annotation
.end field

.field private face_sticker:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private guid:Ljava/lang/String;

.field private isValid:Z

.field private isValidated:Z

.field private look_guid:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private multi_face_sticker:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;",
            ">;"
        }
    .end annotation
.end field

.field private scene_sticker:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;->FACE_DISTORTION:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->z(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;)Ljava/util/List;
    .locals 1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance p1, Lp00;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lp00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance p1, Lf7;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lf7;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->o()Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The name doesn\'t exist in input enum!!! class="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    const-string v1, "FunStickerTemplate"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static f(Ljava/lang/Iterable;)V
    .locals 1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;->file_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "file_name is empty or null string."

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static r(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
    .locals 14

    const-string v0, "sticker_template.json"

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->f:Ljava/util/List;

    const-string v2, "parseTemplate folder="

    const-string v3, "FunStickerTemplate"

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-class v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    sget-object v5, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;

    invoke-direct {v6, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;-><init>(Ljava/io/Reader;)V

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    invoke-virtual {v4, v6, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->c(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->f(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)V

    sget-object v6, Lcom/perfectcorp/thirdparty/com/google/gson/internal/y;->a:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v6

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parsed template is null!!! folder="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->version:I

    const/4 v6, 0x1

    const/4 v8, 0x2

    if-ne v4, v6, :cond_1

    iput v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->version:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->multi_face_sticker:Ljava/util/List;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    invoke-direct {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;-><init>()V

    iput v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_count:I

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->look_guid:Ljava/lang/String;

    iput-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->look_guid:Ljava/lang/String;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->face_sticker:Ljava/util/List;

    iput-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->multi_face_sticker:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->i()V

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->scene_sticker:Ljava/util/List;

    if-nez v4, :cond_2

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    iput-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->scene_sticker:Ljava/util/List;

    goto :goto_3

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->scene_sticker:Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :goto_3
    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->face_distortion:Ljava/util/List;

    if-nez v4, :cond_3

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_4
    iput-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->face_distortion:Ljava/util/List;

    goto :goto_5

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->face_distortion:Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_4

    :goto_5
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->j()V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->n()Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    move-result-object v4

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->b:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->multi_face_sticker:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v6

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    iget v13, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_count:I

    if-nez v13, :cond_5

    :goto_7
    if-lez v11, :cond_4

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    :cond_4
    move v11, v7

    goto :goto_9

    :cond_5
    :goto_8
    if-lez v13, :cond_6

    if-lez v11, :cond_6

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    :cond_6
    :goto_9
    if-lez v11, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;)V

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->extra_event:Ljava/util/List;

    if-nez v4, :cond_8

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_a
    iput-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->extra_event:Ljava/util/List;

    goto :goto_b

    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->extra_event:Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v10

    new-instance v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/u;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-static {v10, v11}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->a(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_a

    :goto_b
    new-array v4, v7, [Ljava/lang/Integer;

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    sget-object v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/j;->b:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v9, v7

    if-eq v7, v6, :cond_b

    if-eq v7, v8, :cond_a

    if-eq v7, v5, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e()V

    goto :goto_c

    :cond_a
    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->MOUTH_CLOSED_STATE_REPEAT:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->MOUTH_CLOSING_EVENT_ONCE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->MOUTH_OPENED_STATE_REPEAT:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->MOUTH_OPENING_EVENT_ONCE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_b
    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->EYE_BLINKING_EVENT_ONCE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    goto :goto_d

    :cond_c
    invoke-static {v4}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->c(Ljava/util/ArrayList;)V

    :cond_d
    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;)V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_1
    move-object v4, p1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-lez v1, :cond_3

    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->scene_sticker:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->scene_sticker:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->ALWAYS_ON:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->ALWAYS_ON:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a:I

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    :goto_0
    if-lez v1, :cond_0

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->scene_sticker:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->extra_event:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final i()V
    .locals 6

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x3

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->version:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->action_hint:Ljava/util/List;

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->a(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/j;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    if-eq v4, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "multiface3"

    goto :goto_1

    :cond_1
    const-string v4, "multiface"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v3, v2

    :cond_3
    iput-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->action_hint_image:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->multi_face_sticker:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->multi_face_sticker:Ljava/util/List;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->multi_face_sticker:Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->multi_face_sticker:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    if-nez v1, :cond_2

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :goto_3
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;->image_anchor_point:Ljava/util/List;

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_5
    iput-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;->image_anchor_point:Ljava/util/List;

    goto :goto_4

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;->image_anchor_point:Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    :cond_4
    return-void
.end method

.method public final k()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->action_hint:Ljava/util/List;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->a:Ljava/util/List;

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->a(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->a:Ljava/util/List;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->version:I

    return p0
.end method

.method public final n()Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;
    .locals 12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->face_distortion:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->multi_face_sticker:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;

    iget-object v10, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;->reference_sticker_name:Ljava/lang/String;

    iget-object v11, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;->file_name:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iput-object v3, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v5, v4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    iput-boolean v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;->a:Z

    :cond_5
    return-object p0
.end method

.method public final o()Z
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    if-eq p0, v0, :cond_1

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->version:I

    if-lez p0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final p()Z
    .locals 5

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->isValidated:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->isValid:Z

    return p0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    const/4 v1, 0x1

    if-eq p0, v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->guid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->o()Z

    move-result v0

    const-string v2, "Unsupported version!!! version=%d, SUPPORTED_VERSION=%d"

    iget v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->version:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->scene_sticker:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->f(Ljava/lang/Iterable;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->q()V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "GUID is empty or null string."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string v2, "FunStickerTemplate"

    const-string v3, "Template validate failed."

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->isValid:Z

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->isValidated:Z

    return v0
.end method

.method public final q()V
    .locals 3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_count:I

    if-ltz v1, :cond_1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->f(Ljava/lang/Iterable;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$f;->face_sticker:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;->model_offset:Landroid/graphics/PointF;

    const-string v2, "model_offset == null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "face_count < 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
