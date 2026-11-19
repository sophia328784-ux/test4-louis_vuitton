.class Lcom/batch/android/messaging/view/CloseButton$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/messaging/view/CloseButton;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/messaging/view/CloseButton;


# direct methods
.method public constructor <init>(Lcom/batch/android/messaging/view/CloseButton;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/messaging/view/CloseButton$a;->a:Lcom/batch/android/messaging/view/CloseButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/messaging/view/CloseButton$a;->a:Lcom/batch/android/messaging/view/CloseButton;

    invoke-virtual {v0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/messaging/view/CloseButton$a;->a:Lcom/batch/android/messaging/view/CloseButton;

    invoke-virtual {v1}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/batch/android/messaging/view/CloseButton$a;->a:Lcom/batch/android/messaging/view/CloseButton;

    invoke-virtual {v3}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p0, p0, Lcom/batch/android/messaging/view/CloseButton$a;->a:Lcom/batch/android/messaging/view/CloseButton;

    invoke-virtual {p0}, Lcom/batch/android/messaging/view/CloseButton;->getPadding()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
