.class public final Lcom/vuitton/android/presentation/utils/UrlFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/utils/UrlFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/utils/UrlFactory;",
        "",
        "Lkotlin/Function0;",
        "",
        "getMaxImageWidthInPixel",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Companion",
        "presentation"
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
.field public static final b:Lcom/vuitton/android/presentation/utils/UrlFactory$Companion;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/utils/UrlFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/utils/UrlFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/utils/UrlFactory;->b:Lcom/vuitton/android/presentation/utils/UrlFactory$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/vuitton/android/presentation/utils/UrlFactory;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/vuitton/android/presentation/utils/ImageConfiguration;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->b:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;

    sget-object v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ".jpg"

    const-string v3, ".png"

    invoke-static {p0, v2, v3}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    sget-object v3, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Lokhttp3/HttpUrl$Companion;->c(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    const-string v2, "wid"

    invoke-virtual {p0, v2}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;)V

    const-string v4, "hei"

    invoke-virtual {p0, v4}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    instance-of v1, v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Opaque;

    if-eqz v1, :cond_2

    const-string v1, "impolicy"

    const-string v3, "bgcolor"

    invoke-virtual {p0, v1, v3}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Opaque;

    iget-object v0, v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Opaque;->a:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_3
    :goto_2
    iget-object p1, p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;->b:Ljava/util/Set;

    iget-object p1, p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Width:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2, p1}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Height:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4, p1}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static d(Ljava/lang/String;ILcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;->c:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Companion;

    new-instance v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->a(I)I

    move-result v2

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->a(I)I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;-><init>(II)V

    sget-object p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Width:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    sget-object v2, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Height:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    filled-new-array {p1, v2}, [Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Companion;->a(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;Ljava/util/Set;)Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/android/presentation/utils/ImageConfiguration;-><init>(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)V

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/utils/UrlFactory;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/utils/ImageConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;->c:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Companion;

    new-instance v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget p0, p0, Lcom/vuitton/android/presentation/utils/UrlFactory;->a:I

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Width:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    invoke-static {p0}, Lkotlin/collections/SetsKt;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Companion;->a(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;Ljava/util/Set;)Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/utils/ImageConfiguration;-><init>(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/utils/UrlFactory;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/utils/ImageConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;->c:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Companion;

    new-instance v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;

    iget p0, p0, Lcom/vuitton/android/presentation/utils/UrlFactory;->a:I

    div-int/lit8 p0, p0, 0x2

    invoke-direct {v1, p0, p0}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;-><init>(II)V

    sget-object p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Width:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    sget-object v2, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Height:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    filled-new-array {p0, v2}, [Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Companion;->a(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;Ljava/util/Set;)Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration;

    sget-object v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/utils/ImageConfiguration;-><init>(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/utils/UrlFactory;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/utils/ImageConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
