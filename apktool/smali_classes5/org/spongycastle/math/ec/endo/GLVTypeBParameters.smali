.class public Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "v1"

    invoke-static {p3, p2}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->a([Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string p2, "v2"

    invoke-static {p4, p2}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->a([Ljava/math/BigInteger;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->a:Ljava/math/BigInteger;

    const/4 p0, 0x0

    aget-object p1, p3, p0

    const/4 p1, 0x1

    aget-object p2, p3, p1

    aget-object p0, p4, p0

    aget-object p0, p4, p1

    return-void
.end method

.method public static a([Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "\'"

    const-string v0, "\' must consist of exactly 2 (non-null) values"

    invoke-static {p0, p1, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
