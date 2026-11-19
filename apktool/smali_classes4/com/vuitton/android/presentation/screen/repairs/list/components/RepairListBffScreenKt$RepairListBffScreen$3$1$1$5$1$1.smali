.class final Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
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
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$1$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$1$1;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$1$1;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$1$1;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
