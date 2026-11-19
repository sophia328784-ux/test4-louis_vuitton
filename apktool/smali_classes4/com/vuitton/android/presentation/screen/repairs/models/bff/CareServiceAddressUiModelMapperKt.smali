.class public abstract Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModelMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel;->c:Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->j:Ljava/lang/String;

    iget-object v11, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->k:Ljava/lang/String;

    iget-object v12, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->l:Ljava/lang/String;

    iget-object v13, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->m:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceAddressUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
