.class public Lorg/teleal/cling/model/meta/StateVariableEventDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v0, v1, v1}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0, v0}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->a:Z

    iput p2, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->b:I

    iput p3, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->c:I

    return-void
.end method
