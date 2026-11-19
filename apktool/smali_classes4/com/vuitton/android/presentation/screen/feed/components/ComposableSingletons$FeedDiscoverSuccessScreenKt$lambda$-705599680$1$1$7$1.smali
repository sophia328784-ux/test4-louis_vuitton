.class final Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-705599680$1$1$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;",
        "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;",
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


# static fields
.field public static final b:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-705599680$1$1$7$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-705599680$1$1$7$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-705599680$1$1$7$1;->b:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-705599680$1$1$7$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    iget-object p0, p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->b:Ljava/lang/String;

    check-cast p2, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
