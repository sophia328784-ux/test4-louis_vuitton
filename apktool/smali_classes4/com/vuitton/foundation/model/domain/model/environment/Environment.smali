.class public abstract Lcom/vuitton/foundation/model/domain/model/environment/Environment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;,
        Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u000f\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0082\u0001\u000e\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment;",
        "",
        "Preprod",
        "I1",
        "Staging1",
        "Staging2",
        "Staging3",
        "DevEphemeral",
        "Dev",
        "PreviewDev",
        "PreviewPrp",
        "PreviewProd",
        "Nrt",
        "Prod",
        "HiddenProd",
        "HiddenProdPreview",
        "Companion",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;",
        "Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;",
        "domain"
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
.field public static final b:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;

.field public static final c:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment;->b:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;

    new-instance v2, Lkotlin/Pair;

    const-string v0, "Preprod"

    const-string v1, "preproduction"

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    const-string v0, "Staging 1"

    const-string v1, "staging1"

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string v0, "Staging 2"

    const-string v1, "staging2"

    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    const-string v0, "Staging 3"

    const-string v1, "staging3"

    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    const-string v0, "Dev"

    const-string v1, "dev"

    invoke-direct {v6, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lkotlin/Pair;

    const-string v0, "DEV"

    invoke-direct {v7, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lkotlin/Pair;

    const-string v0, "Dev Preview"

    const-string v1, "previewDev"

    invoke-direct {v8, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lkotlin/Pair;

    const-string v0, "PRP Preview"

    const-string v1, "previewPreproduction"

    invoke-direct {v9, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lkotlin/Pair;

    const-string v0, "PROD Preview"

    const-string v1, "previewProduction"

    invoke-direct {v10, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lkotlin/Pair;

    const-string v0, "NRT"

    const-string v1, "nrt"

    invoke-direct {v11, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Lkotlin/Pair;

    const-string v0, "Production"

    const-string v1, "production"

    invoke-direct {v12, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lkotlin/Pair;

    const-string v0, "Hidden Production"

    const-string v1, "hiddenProduction"

    invoke-direct {v13, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Lkotlin/Pair;

    const-string v0, "Hidden Production Preview"

    const-string v1, "previewHiddenProduction"

    invoke-direct {v14, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v14}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/environment/Environment;->a:Ljava/lang/String;

    return-void
.end method
