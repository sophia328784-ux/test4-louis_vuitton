.class public final Landroidx/compose/ui/autofill/AndroidAutofill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/autofill/Autofill;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/ui/autofill/AndroidAutofill;",
        "Landroidx/compose/ui/autofill/Autofill;",
        "Landroid/view/View;",
        "view",
        "Landroidx/compose/ui/autofill/AutofillTree;",
        "autofillTree",
        "<init>",
        "(Landroid/view/View;Landroidx/compose/ui/autofill/AutofillTree;)V",
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
.field public final a:Landroid/view/View;

.field public final b:Landroidx/compose/ui/autofill/AutofillTree;

.field public final c:Landroid/view/autofill/AutofillManager;

.field public final d:Landroid/view/autofill/AutofillId;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/compose/ui/autofill/AutofillTree;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->b:Landroidx/compose/ui/autofill/AutofillTree;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/autofill/AutofillManager;

    if-eqz p2, :cond_1

    iput-object p2, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->c:Landroid/view/autofill/AutofillManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAutofill(I)V

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->d:Landroid/view/autofill/AutofillId;

    return-void

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, La;->s(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0

    :cond_1
    const-string p0, "Autofill service could not be located."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/autofill/AutofillNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->a:Landroid/view/View;

    iget p1, p1, Landroidx/compose/ui/autofill/AutofillNode;->d:I

    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->c:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    return-void
.end method

.method public final b(Landroidx/compose/ui/autofill/AutofillNode;)V
    .locals 5

    iget-object v0, p1, Landroidx/compose/ui/autofill/AutofillNode;->b:Landroidx/compose/ui/geometry/Rect;

    if-eqz v0, :cond_0

    iget p1, p1, Landroidx/compose/ui/autofill/AutofillNode;->d:I

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->c:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->c:Landroid/view/autofill/AutofillManager;

    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->a:Landroid/view/View;

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    return-void

    :cond_0
    const-string p0, "requestAutofill called before onChildPositioned()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
