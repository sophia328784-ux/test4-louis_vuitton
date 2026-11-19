.class public Lorg/teleal/cling/model/meta/UDAVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/meta/UDAVersion;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/meta/UDAVersion;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/teleal/cling/model/meta/UDAVersion;->a:I

    .line 12
    iput p2, p0, Lorg/teleal/cling/model/meta/UDAVersion;->b:I

    return-void
.end method
