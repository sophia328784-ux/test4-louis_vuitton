.class public final Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;
.super Ljava/lang/Object;


# instance fields
.field public angle:Ljava/lang/String;

.field public lid:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;

.field public shape:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;->lid:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;

    return-void
.end method
