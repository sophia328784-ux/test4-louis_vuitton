.class public Lcom/sightcall/uvc/Size;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public frameIntervalIndex:I

.field public frameIntervalType:I

.field public frame_type:I

.field public height:I

.field public index:I

.field public intervals:[I

.field public type:I

.field public width:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/sightcall/uvc/Size;->type:I

    .line 82
    iput p2, p0, Lcom/sightcall/uvc/Size;->frame_type:I

    .line 83
    iput p3, p0, Lcom/sightcall/uvc/Size;->index:I

    .line 84
    iput p4, p0, Lcom/sightcall/uvc/Size;->width:I

    .line 85
    iput p5, p0, Lcom/sightcall/uvc/Size;->height:I

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/sightcall/uvc/Size;->frameIntervalType:I

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lcom/sightcall/uvc/Size;->frameIntervalIndex:I

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/sightcall/uvc/Size;->intervals:[I

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/sightcall/uvc/Size;->type:I

    .line 57
    iput p2, p0, Lcom/sightcall/uvc/Size;->frame_type:I

    .line 58
    iput p3, p0, Lcom/sightcall/uvc/Size;->index:I

    .line 59
    iput p4, p0, Lcom/sightcall/uvc/Size;->width:I

    .line 60
    iput p5, p0, Lcom/sightcall/uvc/Size;->height:I

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/sightcall/uvc/Size;->frameIntervalType:I

    .line 62
    iput p1, p0, Lcom/sightcall/uvc/Size;->frameIntervalIndex:I

    const/4 p2, 0x3

    .line 63
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/sightcall/uvc/Size;->intervals:[I

    .line 64
    aput p6, p2, p1

    const/4 p0, 0x1

    .line 65
    aput p7, p2, p0

    const/4 p0, 0x2

    .line 66
    aput p8, p2, p0

    return-void
.end method

.method public constructor <init>(IIIII[I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/sightcall/uvc/Size;->type:I

    .line 69
    iput p2, p0, Lcom/sightcall/uvc/Size;->frame_type:I

    .line 70
    iput p3, p0, Lcom/sightcall/uvc/Size;->index:I

    .line 71
    iput p4, p0, Lcom/sightcall/uvc/Size;->width:I

    .line 72
    iput p5, p0, Lcom/sightcall/uvc/Size;->height:I

    const/4 p1, -0x1

    if-eqz p6, :cond_0

    .line 73
    array-length p2, p6

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    const/4 p3, 0x0

    if-lez p2, :cond_1

    .line 74
    iput p2, p0, Lcom/sightcall/uvc/Size;->frameIntervalType:I

    .line 75
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/sightcall/uvc/Size;->intervals:[I

    .line 76
    invoke-static {p6, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 77
    :cond_1
    iput p1, p0, Lcom/sightcall/uvc/Size;->frameIntervalType:I

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/sightcall/uvc/Size;->intervals:[I

    .line 79
    :goto_1
    iput p3, p0, Lcom/sightcall/uvc/Size;->frameIntervalIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/sightcall/uvc/Size;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/sightcall/uvc/Size;->type:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->type:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->frame_type:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->frame_type:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->index:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->index:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->width:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->width:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->height:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->height:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->frameIntervalType:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->frameIntervalType:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->frameIntervalIndex:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->frameIntervalIndex:I

    iget-object v0, p1, Lcom/sightcall/uvc/Size;->intervals:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sightcall/uvc/Size;->intervals:[I

    iget-object p0, p1, Lcom/sightcall/uvc/Size;->intervals:[I

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/uvc/Size;->intervals:[I

    return-void
.end method


# virtual methods
.method public set(Lcom/sightcall/uvc/Size;)Lcom/sightcall/uvc/Size;
    .locals 3

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/sightcall/uvc/Size;->type:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->type:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->frame_type:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->frame_type:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->index:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->index:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->width:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->width:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->height:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->height:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->frameIntervalType:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->frameIntervalType:I

    iget v0, p1, Lcom/sightcall/uvc/Size;->frameIntervalIndex:I

    iput v0, p0, Lcom/sightcall/uvc/Size;->frameIntervalIndex:I

    iget-object v0, p1, Lcom/sightcall/uvc/Size;->intervals:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sightcall/uvc/Size;->intervals:[I

    iget-object p1, p1, Lcom/sightcall/uvc/Size;->intervals:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/uvc/Size;->intervals:[I

    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/sightcall/uvc/Size;->height:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sightcall/uvc/Size;->width:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lcom/sightcall/uvc/Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v2, p0, Lcom/sightcall/uvc/Size;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Lcom/sightcall/uvc/Size;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lcom/sightcall/uvc/Size;->frame_type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lcom/sightcall/uvc/Size;->index:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%dx%d (%.2f) type:%d frame:%d index:%d"

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
