.class public final Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError;,
        Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;",
        "",
        "<init>",
        "()V",
        "ApiAddressError",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/vuitton/foundation/exception/NetworkException$CustomException;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "errorList"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "errors"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$NoErrorMessage;->a:Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$NoErrorMessage;

    if-gtz v0, :cond_1

    new-instance p0, Lcom/vuitton/foundation/exception/NetworkException$CustomException;

    invoke-direct {p0, v1}, Lcom/vuitton/foundation/exception/NetworkException$CustomException;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "message"

    invoke-static {v0, p0}, Lcom/vuitton/android/core/extensions/JsonObjectExtKt;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "localizedMessage"

    invoke-static {v2, p0}, Lcom/vuitton/android/core/extensions/JsonObjectExtKt;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "errorCode"

    invoke-static {v3, p0}, Lcom/vuitton/android/core/extensions/JsonObjectExtKt;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$ErrorMessage;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$ErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance p0, Lcom/vuitton/foundation/exception/NetworkException$CustomException;

    invoke-direct {p0, v1}, Lcom/vuitton/foundation/exception/NetworkException$CustomException;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
