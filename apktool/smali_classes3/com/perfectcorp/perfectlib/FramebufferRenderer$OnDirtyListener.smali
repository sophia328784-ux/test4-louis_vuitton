.class public interface abstract Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/FramebufferRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDirtyListener"
.end annotation


# static fields
.field public static final NOP:Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm00;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;->NOP:Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;

    return-void
.end method


# virtual methods
.method public abstract onDirty(Lcom/perfectcorp/perfectlib/FramebufferRenderer;)V
.end method
