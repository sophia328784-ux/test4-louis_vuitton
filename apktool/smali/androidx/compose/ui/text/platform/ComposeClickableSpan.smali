.class final Landroidx/compose/ui/text/platform/ComposeClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/ComposeClickableSpan;",
        "Landroid/text/style/ClickableSpan;",
        "Landroidx/compose/ui/text/LinkAnnotation;",
        "link",
        "<init>",
        "(Landroidx/compose/ui/text/LinkAnnotation;)V",
        "ui-text"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroidx/compose/ui/text/LinkAnnotation;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/LinkAnnotation;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/ComposeClickableSpan;->b:Landroidx/compose/ui/text/LinkAnnotation;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/ComposeClickableSpan;->b:Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {p0}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/LinkInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroidx/compose/ui/text/LinkInteractionListener;->a(Landroidx/compose/ui/text/LinkAnnotation;)V

    :cond_0
    return-void
.end method
