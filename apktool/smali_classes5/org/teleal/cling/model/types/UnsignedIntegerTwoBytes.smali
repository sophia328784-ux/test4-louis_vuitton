.class public final Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;
.super Lorg/teleal/cling/model/types/UnsignedVariableInteger;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;
    .locals 0

    sget-object p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->SIXTEEN:Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;

    return-object p0
.end method
