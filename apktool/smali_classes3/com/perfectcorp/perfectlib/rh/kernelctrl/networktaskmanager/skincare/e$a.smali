.class public final Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;
    }
.end annotation


# instance fields
.field public final lastModified:J

.field private parsedPayload:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

.field public final payload:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

.field public final productId:Ljava/lang/String;

.field private referencedProductIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->productId:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->payload:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->lastModified:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->parsedPayload:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->payload:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    const-class v2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->parsedPayload:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->parsedPayload:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->parsedPayload:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->payload:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    const-class v2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->parsedPayload:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->referencedProductIds:Ljava/util/List;

    if-nez v0, :cond_3

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->parsedPayload:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a;->referencedProducts:Ljava/util/List;

    sget-object v2, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a$a;

    iget-wide v2, v2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a$a$a;->productId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->referencedProductIds:Ljava/util/List;

    :cond_3
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->referencedProductIds:Ljava/util/List;

    return-object p0
.end method
