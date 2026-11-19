.class public final Landroidx/navigation/serialization/RouteDecoder;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B-\u0008\u0016\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0005\u00a2\u0006\u0004\u0008\t\u0010\nB)\u0008\u0016\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0005\u00a2\u0006\u0004\u0008\t\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/navigation/serialization/RouteDecoder;",
        "Lkotlinx/serialization/encoding/AbstractDecoder;",
        "Landroid/os/Bundle;",
        "Landroidx/savedstate/SavedState;",
        "bundle",
        "",
        "",
        "Landroidx/navigation/NavType;",
        "typeMap",
        "<init>",
        "(Landroid/os/Bundle;Ljava/util/Map;)V",
        "Landroidx/lifecycle/SavedStateHandle;",
        "handle",
        "(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/navigation/serialization/ArgStore;

.field public b:I

.field public c:Ljava/lang/String;

.field public final d:Lkotlinx/serialization/modules/SerialModuleImpl;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/navigation/serialization/RouteDecoder;->b:I

    const-string v0, ""

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->c:Ljava/lang/String;

    sget-object v0, Lkotlinx/serialization/modules/SerializersModuleKt;->a:Lkotlinx/serialization/modules/SerialModuleImpl;

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->d:Lkotlinx/serialization/modules/SerialModuleImpl;

    new-instance v0, Landroidx/navigation/serialization/SavedStateArgStore;

    invoke-direct {v0, p1, p2}, Landroidx/navigation/serialization/SavedStateArgStore;-><init>(Landroid/os/Bundle;Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->a:Landroidx/navigation/serialization/ArgStore;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/SavedStateHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Landroidx/navigation/serialization/RouteDecoder;->b:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->c:Ljava/lang/String;

    .line 31
    sget-object v0, Lkotlinx/serialization/modules/SerializersModuleKt;->a:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 32
    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->d:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 33
    new-instance v0, Landroidx/navigation/serialization/SavedStateHandleArgStore;

    invoke-direct {v0, p1, p2}, Landroidx/navigation/serialization/SavedStateHandleArgStore;-><init>(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->a:Landroidx/navigation/serialization/ArgStore;

    return-void
.end method


# virtual methods
.method public final D(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/navigation/serialization/RouteDecoder;->G()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final F()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/navigation/serialization/RouteDecoder;->G()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final G()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->a:Landroidx/navigation/serialization/ArgStore;

    iget-object v1, p0, Landroidx/navigation/serialization/RouteDecoder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/serialization/ArgStore;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Unexpected null value for non-nullable argument "

    iget-object p0, p0, Landroidx/navigation/serialization/RouteDecoder;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Ltg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/serialization/RouteDecoder;->d:Lkotlinx/serialization/modules/SerialModuleImpl;

    return-object p0
.end method

.method public final n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/navigation/serialization/RouteDecoder;->b:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/navigation/serialization/RouteDecoder;->a:Landroidx/navigation/serialization/ArgStore;

    invoke-virtual {v2, v1}, Landroidx/navigation/serialization/ArgStore;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Landroidx/navigation/serialization/RouteDecoder;->b:I

    iput-object v1, p0, Landroidx/navigation/serialization/RouteDecoder;->c:Ljava/lang/String;

    return v0
.end method

.method public final o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/navigation/serialization/RouteSerializerKt;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/serialization/RouteDecoder;->c:Ljava/lang/String;

    iput v0, p0, Landroidx/navigation/serialization/RouteDecoder;->b:I

    :cond_0
    return-object p0
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Landroidx/navigation/serialization/RouteDecoder;->a:Landroidx/navigation/serialization/ArgStore;

    iget-object p0, p0, Landroidx/navigation/serialization/RouteDecoder;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/navigation/serialization/ArgStore;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
