.class public final Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/PixelBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EGLConfigChooserBuilder"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;
    .locals 1

    new-instance v0, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;

    invoke-direct {v0, p0}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;-><init>(Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;)V

    return-object v0
.end method
