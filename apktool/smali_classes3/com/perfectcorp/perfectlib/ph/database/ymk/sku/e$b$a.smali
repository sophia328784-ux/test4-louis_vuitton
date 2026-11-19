.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final patternGuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final wearingStyles:Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->patternGuids:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->wearingStyles:Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->patternGuids:Ljava/util/List;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->wearingStyles:Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->wearingStyles:Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/f;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
