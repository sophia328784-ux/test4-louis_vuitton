.class final Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/core/consent/compose/ConsentViewKt;->ConsentView(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
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
.field final synthetic $consentBody:Landroidx/compose/ui/text/AnnotatedString;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $viewModel:Lcom/sightcall/core/consent/ConsentViewModel;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Lcom/sightcall/core/consent/ConsentViewModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;->$consentBody:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;->$viewModel:Lcom/sightcall/core/consent/ConsentViewModel;

    iput-object p3, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;->$consentBody:Landroidx/compose/ui/text/AnnotatedString;

    const-string v1, "URL"

    invoke-virtual {v0, p1, p1, v1}, Landroidx/compose/ui/text/AnnotatedString;->c(IILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;->$viewModel:Lcom/sightcall/core/consent/ConsentViewModel;

    iget-object p0, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$1$1$6$2$1$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sightcall/core/consent/ConsentViewModel;->onPrivacyLinkClick(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
