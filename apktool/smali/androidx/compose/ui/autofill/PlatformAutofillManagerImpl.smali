.class public final Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/autofill/PlatformAutofillManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;",
        "Landroidx/compose/ui/autofill/PlatformAutofillManager;",
        "Landroid/view/autofill/AutofillManager;",
        "platformAndroidManager",
        "<init>",
        "(Landroid/view/autofill/AutofillManager;)V",
        "ui"
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
.field public final a:Landroid/view/autofill/AutofillManager;


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a:Landroid/view/autofill/AutofillManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    return-void
.end method

.method public final b(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p2, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    return-void
.end method

.method public final c(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V

    return-void
.end method

.method public final commit()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->commit()V

    return-void
.end method

.method public final d(Landroid/view/View;IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    return-void
.end method

.method public final e(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    return-void
.end method
