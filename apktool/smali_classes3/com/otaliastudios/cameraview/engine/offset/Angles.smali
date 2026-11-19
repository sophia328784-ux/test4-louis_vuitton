.class public Lcom/otaliastudios/cameraview/engine/offset/Angles;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/otaliastudios/cameraview/CameraLogger;


# instance fields
.field public a:Lcom/otaliastudios/cameraview/controls/Facing;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Angles"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->e:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b:I

    iput v0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->c:I

    iput v0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->d:I

    return-void
.end method

.method public static e(I)V
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "This value is not sanitized: "

    invoke-static {p0, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static f(I)I
    .locals 0

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method


# virtual methods
.method public final a(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->BASE:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->a(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I

    move-result p0

    rsub-int p0, p0, 0x168

    invoke-static {p0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->f(I)I

    move-result p0

    return p0

    :cond_1
    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/otaliastudios/cameraview/engine/offset/Angles$1;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b:I

    rsub-int p0, p0, 0x168

    invoke-static {p0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->f(I)I

    move-result p0

    return p0

    :cond_2
    const-string p0, "Unknown reference: "

    invoke-static {p2, p0}, Lx1;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    iget p0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->d:I

    invoke-static {p0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->f(I)I

    move-result p0

    return p0

    :cond_4
    iget p0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->c:I

    rsub-int p0, p0, 0x168

    invoke-static {p0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->f(I)I

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0, v0, p2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->a(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I

    move-result p2

    invoke-virtual {p0, v0, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->a(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I

    move-result p0

    sub-int/2addr p2, p0

    invoke-static {p2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->f(I)I

    move-result p0

    return p0
.end method

.method public final b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z
    .locals 1

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p0, p1, p2, v0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->c(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p0

    rem-int/lit16 p0, p0, 0xb4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->a(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)I

    move-result p1

    sget-object p2, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    if-ne p3, p2, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->a:Lcom/otaliastudios/cameraview/controls/Facing;

    sget-object p2, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    if-ne p0, p2, :cond_0

    rsub-int p0, p1, 0x168

    invoke-static {p0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->f(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public final d()V
    .locals 8

    iget v0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v1, "Angles changed:"

    const-string v2, "sensorOffset:"

    const-string v4, "displayOffset:"

    const-string v6, "deviceOrientation:"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Angles;->e:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v1, v0, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
