.class public Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;


# instance fields
.field public final a:Landroid/view/contentcapture/ContentCaptureSession;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->a:Landroid/view/contentcapture/ContentCaptureSession;

    iput-object p2, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/autofill/AutofillId;J)Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->a:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/contentcapture/ContentCaptureSession;->newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;

    move-result-object p0

    new-instance p1, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;-><init>(Landroid/view/ViewStructure;)V

    return-object p1
.end method

.method public final b(Landroid/view/autofill/AutofillId;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->a:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewDisappeared(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public final c(Landroid/view/autofill/AutofillId;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->a:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(Landroid/view/ViewStructure;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->a:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    return-void
.end method

.method public final e(J)Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->a:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->newAutofillId(Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;

    move-result-object p0

    return-object p0
.end method

.method public final flush()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iget-object p0, p0, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->a:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewsDisappeared(Landroid/view/autofill/AutofillId;[J)V

    return-void
.end method
