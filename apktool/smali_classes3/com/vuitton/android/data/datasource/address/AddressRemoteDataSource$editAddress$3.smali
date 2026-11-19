.class final Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource$editAddress$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/data/exception/HttpStatusCode;",
        "Lcom/vuitton/android/data/exception/HttpResponseBody;",
        "Lcom/vuitton/foundation/exception/NetworkException$CustomException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource$editAddress$3;->b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/data/exception/HttpStatusCode;

    iget p1, p1, Lcom/vuitton/android/data/exception/HttpStatusCode;->a:I

    check-cast p2, Lcom/vuitton/android/data/exception/HttpResponseBody;

    iget-object p2, p2, Lcom/vuitton/android/data/exception/HttpResponseBody;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource$editAddress$3;->b:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;->c:Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;->a(Ljava/lang/String;)Lcom/vuitton/foundation/exception/NetworkException$CustomException;

    move-result-object p0

    return-object p0
.end method
