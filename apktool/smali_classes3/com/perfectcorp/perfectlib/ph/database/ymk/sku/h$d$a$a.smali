.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;


# instance fields
.field public final button:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final colors:Ljava/util/List;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "color"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/idc/a;",
            ">;"
        }
    .end annotation
.end field

.field public final display_color:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public final image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/o$b;",
            ">;"
        }
    .end annotation
.end field

.field public final input:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/o$c;",
            ">;"
        }
    .end annotation
.end field

.field public final palettes:Ljava/util/List;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "palette"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/idc/d;",
            ">;"
        }
    .end annotation
.end field

.field public final patterns:Ljava/util/List;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "pattern"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/idc/e;",
            ">;"
        }
    .end annotation
.end field

.field public final text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/o$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->button:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->image:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->text:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->display_color:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->input:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->palettes:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->colors:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->patterns:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->image:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v0, Le81;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Le81;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->m()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/o$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$b;->attr_path:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "SkuMetadata"

    const-string v0, "[getImagePath]"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->text:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v0, Le81;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Le81;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->m()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/o$g;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$g;->attr_value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "SkuMetadata"

    const-string v0, "[getTextValue]"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->input:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v0, Le81;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Le81;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->m()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/o$c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$c;->attr_hidden:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "SkuMetadata"

    const-string v0, "[getInputHidden]"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method
