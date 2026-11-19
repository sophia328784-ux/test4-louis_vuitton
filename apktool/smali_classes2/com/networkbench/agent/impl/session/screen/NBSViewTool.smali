.class public Lcom/networkbench/agent/impl/session/screen/NBSViewTool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final numbers:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/NBSViewTool;->numbers:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVisibleViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSViewTool;->numbers:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    aget p0, v1, p0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-object v0
.end method
