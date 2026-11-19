.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->a:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->b:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->c:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->d:I

    return-void
.end method
