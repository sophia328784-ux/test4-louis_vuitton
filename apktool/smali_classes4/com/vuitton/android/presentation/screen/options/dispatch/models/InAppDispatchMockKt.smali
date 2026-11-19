.class public abstract Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;
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


# static fields
.field public static final a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->f:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->k:Ljava/lang/String;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->FRANCE:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    move-object v3, v1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-string v10, "https://pass-api-prp.louisvuitton.com/api/publication/media/142/file"

    const/4 v11, 0x0

    const-string v2, "fr_FR"

    const-string v4, "ba8be9d3-39d6-49df-9897-759fe881c9c0"

    const/4 v6, 0x4

    const-string v7, "France"

    const-string v8, "France"

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v11}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    return-void
.end method
