.class public Lcom/linkplay/core/model/menubar/MenuBar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cap1:I

.field public capability:I

.field public languages:I

.field public plms:I

.field public streams:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/linkplay/core/model/menubar/MenuBar;->languages:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/linkplay/core/model/menubar/MenuBar;->capability:I

    .line 15
    iput p2, p0, Lcom/linkplay/core/model/menubar/MenuBar;->cap1:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/linkplay/core/model/menubar/MenuBar;->capability:I

    iput p2, p0, Lcom/linkplay/core/model/menubar/MenuBar;->plms:I

    iput p3, p0, Lcom/linkplay/core/model/menubar/MenuBar;->streams:I

    return-void
.end method
