.class public LZjTIAZ/KbFDM;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x951

.field public static b:I = 0x4f6

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "]mT"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/KbFDM;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 6

    sget-object v0, LZjTIAZ/KbFDM;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_a

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    sget v3, LZjTIAZ/KbFDM;->b:I

    const/16 v4, 0x4f5

    if-gt v3, v4, :cond_0

    :goto_0
    sget p0, LZjTIAZ/KbFDM;->b:I

    add-int/lit8 v0, p0, 0x27

    const/16 v1, 0xa

    const/16 v3, 0x950

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_2

    const/16 p0, 0xd0

    if-eq v0, p0, :cond_4

    const/16 p0, 0x151

    if-eq v0, p0, :cond_6

    goto :goto_0

    :cond_2
    rem-int/lit8 p0, p0, 0x3c

    rem-int/lit8 p0, p0, 0x53

    sput p0, LZjTIAZ/KbFDM;->b:I

    sget p0, LZjTIAZ/KbFDM;->a:I

    if-gt p0, v3, :cond_4

    :goto_1
    sget p0, LZjTIAZ/KbFDM;->a:I

    add-int/lit8 v0, p0, 0x5b

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    xor-int/lit16 p0, p0, 0x1562

    sput p0, LZjTIAZ/KbFDM;->a:I

    :cond_4
    sget p0, LZjTIAZ/KbFDM;->b:I

    xor-int/lit16 p0, p0, 0x8a5

    mul-int/lit8 p0, p0, 0x10

    rem-int/lit8 p0, p0, 0x1c

    :goto_2
    sput p0, LZjTIAZ/KbFDM;->b:I

    goto :goto_3

    :cond_5
    xor-int/lit16 p0, p0, 0xce7

    shr-int/lit8 p0, p0, 0x9

    goto :goto_2

    :cond_6
    :goto_3
    sget p0, LZjTIAZ/KbFDM;->b:I

    shr-int/lit8 p0, p0, 0x63

    mul-int/lit8 p0, p0, 0x58

    xor-int/lit16 p0, p0, 0x9cb

    sput p0, LZjTIAZ/KbFDM;->b:I

    sget p0, LZjTIAZ/KbFDM;->a:I

    if-gt p0, v3, :cond_6

    :goto_4
    sget p0, LZjTIAZ/KbFDM;->a:I

    add-int/lit8 v0, p0, 0x68

    const/16 v1, 0x15

    if-eq v0, v1, :cond_9

    const/16 v1, 0x57

    if-eq v0, v1, :cond_8

    const/16 v1, 0x104

    if-eq v0, v1, :cond_7

    goto :goto_4

    :cond_7
    rem-int/lit8 p0, p0, 0x3a

    shr-int/lit8 p0, p0, 0x76

    rem-int/lit8 p0, p0, 0x47

    sput p0, LZjTIAZ/KbFDM;->a:I

    goto :goto_4

    :cond_8
    shr-int/lit8 p0, p0, 0x51

    mul-int/lit8 p0, p0, 0x1a

    rem-int/lit8 p0, p0, 0x63

    sput p0, LZjTIAZ/KbFDM;->a:I

    goto :goto_3

    :cond_9
    :goto_5
    sget p0, LZjTIAZ/KbFDM;->a:I

    rem-int/lit8 p0, p0, 0x5

    mul-int/lit16 p0, p0, 0x1d60

    sput p0, LZjTIAZ/KbFDM;->a:I

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
