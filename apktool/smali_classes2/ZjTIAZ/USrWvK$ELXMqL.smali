.class public final LZjTIAZ/USrWvK$ELXMqL;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/USrWvK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZjTIAZ/USrWvK$ELXMqL$DwXtmN;,
        LZjTIAZ/USrWvK$ELXMqL$etZCba;
    }
.end annotation


# static fields
.field public static h:I = 0x16dd

.field public static i:I = 0x1005


# instance fields
.field public final a:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

.field public final b:LZjTIAZ/USrWvK$ELXMqL$etZCba;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(LZjTIAZ/USrWvK$ELXMqL$DwXtmN;LZjTIAZ/USrWvK$ELXMqL$etZCba;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4

    sget v0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    const/16 v1, 0x16dc

    const/16 v2, 0x1b

    if-gt v0, v1, :cond_3

    :goto_0
    sget v0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    add-int/lit8 v1, v0, 0xd

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_1

    const/16 v3, 0xfa

    if-eq v1, v3, :cond_2

    const/16 v3, 0x19c

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit16 v0, v0, 0x10de

    rem-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x3e

    sput v0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    goto :goto_2

    :cond_1
    xor-int/lit16 p0, v0, 0x6da

    add-int/2addr p0, v0

    rem-int/lit8 p0, p0, 0xd

    :goto_1
    sput p0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    :cond_2
    sget p0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    shr-int/2addr p0, v2

    add-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x74

    goto :goto_1

    :cond_3
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZjTIAZ/USrWvK$ELXMqL;->a:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    sget p1, LZjTIAZ/USrWvK$ELXMqL;->h:I

    xor-int/lit16 p1, p1, 0x16dd

    if-eqz p1, :cond_5

    :goto_3
    sget p0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    add-int/lit8 p1, p0, 0x75

    if-eq p1, v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/2addr p0, p0

    rem-int/lit8 p0, p0, 0xb

    sput p0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    goto :goto_3

    :cond_5
    iput-object p2, p0, LZjTIAZ/USrWvK$ELXMqL;->b:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    if-eqz p1, :cond_7

    :goto_4
    sget p0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    add-int/lit8 p0, p0, 0xd

    const/16 p1, 0x20

    if-eq p0, p1, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    sget p0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    shr-int/lit8 p0, p0, 0x1d

    rem-int/lit8 p0, p0, 0x24

    sput p0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    goto :goto_5

    :cond_7
    iput-object p3, p0, LZjTIAZ/USrWvK$ELXMqL;->c:Ljava/lang/String;

    sget p2, LZjTIAZ/USrWvK$ELXMqL;->i:I

    xor-int/lit16 p2, p2, 0x1005

    if-eqz p2, :cond_12

    if-eqz p1, :cond_a

    :goto_6
    sget p1, LZjTIAZ/USrWvK$ELXMqL;->h:I

    add-int/lit8 p2, p1, 0x1a

    const/16 p3, 0x4b

    if-eq p2, p3, :cond_9

    const/16 p3, 0x5e

    if-eq p2, p3, :cond_8

    goto :goto_6

    :cond_8
    xor-int/lit16 p1, p1, 0x575

    rem-int/lit8 p1, p1, 0x2

    sput p1, LZjTIAZ/USrWvK$ELXMqL;->h:I

    goto :goto_8

    :cond_9
    :goto_7
    sget p0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x44

    sput p0, LZjTIAZ/USrWvK$ELXMqL;->h:I

    goto :goto_7

    :cond_a
    :goto_8
    sget p1, LZjTIAZ/USrWvK$ELXMqL;->i:I

    add-int/lit8 p2, p1, 0xd

    const/16 p3, 0x26

    if-eq p2, p3, :cond_11

    const/16 p3, 0xa0

    if-eq p2, p3, :cond_c

    const/16 p3, 0x146

    if-eq p2, p3, :cond_10

    const/16 p1, 0x1d1

    if-eq p2, p1, :cond_b

    goto :goto_8

    :cond_b
    :goto_9
    sget p0, LZjTIAZ/USrWvK$ELXMqL;->i:I

    mul-int/lit8 p0, p0, 0x4f

    xor-int/lit16 p0, p0, 0xe50

    rem-int/lit8 p0, p0, 0x5f

    sput p0, LZjTIAZ/USrWvK$ELXMqL;->i:I

    goto :goto_9

    :cond_c
    xor-int/lit16 p0, p1, 0xd65

    sget p2, LZjTIAZ/USrWvK$ELXMqL;->h:I

    xor-int/lit16 p2, p2, 0x16dd

    if-eqz p2, :cond_f

    :goto_a
    sget p2, LZjTIAZ/USrWvK$ELXMqL;->h:I

    add-int/lit8 p3, p2, 0x68

    const/16 p4, 0x43

    if-eq p3, p4, :cond_e

    const/16 p4, 0x8a

    if-eq p3, p4, :cond_d

    goto :goto_a

    :cond_d
    rem-int/lit8 p3, p2, 0x6b

    add-int/2addr p3, p2

    sput p3, LZjTIAZ/USrWvK$ELXMqL;->h:I

    goto :goto_b

    :cond_e
    rem-int/lit8 p2, p2, 0x76

    shr-int/lit8 p2, p2, 0x70

    sput p2, LZjTIAZ/USrWvK$ELXMqL;->h:I

    goto :goto_a

    :cond_f
    :goto_b
    add-int/2addr p0, p1

    :goto_c
    add-int/2addr p0, p1

    sput p0, LZjTIAZ/USrWvK$ELXMqL;->i:I

    :cond_10
    sget p0, LZjTIAZ/USrWvK$ELXMqL;->i:I

    mul-int/lit8 p0, p0, 0x78

    goto :goto_c

    :cond_11
    shr-int/lit8 p1, p1, 0x67

    xor-int/lit16 p1, p1, 0xf91

    rem-int/lit8 p1, p1, 0x13

    sput p1, LZjTIAZ/USrWvK$ELXMqL;->i:I

    :cond_12
    iput-object p4, p0, LZjTIAZ/USrWvK$ELXMqL;->d:Ljava/lang/String;

    iput-object p5, p0, LZjTIAZ/USrWvK$ELXMqL;->e:[Ljava/lang/String;

    iput-object p6, p0, LZjTIAZ/USrWvK$ELXMqL;->f:Ljava/lang/Integer;

    iput-object p7, p0, LZjTIAZ/USrWvK$ELXMqL;->g:Ljava/lang/Boolean;

    return-void
.end method
