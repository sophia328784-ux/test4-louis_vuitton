.class public Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private className:Ljava/lang/String;

.field private rect:Landroid/graphics/Rect;

.field private viewId:Ljava/lang/String;

.field private viewType:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->rect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->viewType:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    iput-object p3, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->className:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->viewId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->className:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->rect:Landroid/graphics/Rect;

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getViewId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->viewId:Ljava/lang/String;

    return-object p0
.end method

.method public getViewType()Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->viewType:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    return-object p0
.end method

.method public isContainViewRect(Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->rect:Landroid/graphics/Rect;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public isRectOutofScreen(II)Z
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-ge v1, p1, :cond_2

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ge p1, p2, :cond_2

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-lez p1, :cond_2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public setViewId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->viewId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maskViewRect:{rect:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->viewType:Lcom/networkbench/agent/impl/session/screen/NBSMaskViewType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", className:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSMaskViewRect;->className:Ljava/lang/String;

    const-string v1, "}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
