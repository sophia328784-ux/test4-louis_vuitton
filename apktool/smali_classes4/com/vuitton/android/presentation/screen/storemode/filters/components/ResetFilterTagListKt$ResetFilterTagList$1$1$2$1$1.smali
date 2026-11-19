.class final Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$1$1$2$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ResetFilterTag;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ResetFilterTag;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$1$1$2$1$1;->b:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ResetFilterTag;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$1$1$2$1$1;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$1$1$2$1$1;->b:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ResetFilterTag;

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ResetFilterTag;->c:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ResetFilterTag;->b:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ResetFilterTagListKt$ResetFilterTagList$1$1$2$1$1;->c:Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
