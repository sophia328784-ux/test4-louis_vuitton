.class public final enum Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlignMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIGN_BOTTOM:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

.field public static final enum ALIGN_CENTER:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

.field public static final enum ALIGN_STRETCH:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

.field public static final enum ALIGN_TOP:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

.field private static final synthetic a:[Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    const-string v1, "ALIGN_STRETCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->ALIGN_STRETCH:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    new-instance v1, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    const-string v2, "ALIGN_TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->ALIGN_TOP:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    new-instance v2, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    const-string v3, "ALIGN_BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->ALIGN_BOTTOM:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    new-instance v3, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    const-string v4, "ALIGN_CENTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->ALIGN_CENTER:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    move-result-object v0

    sput-object v0, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->a:[Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;
    .locals 5

    invoke-static {}, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->values()[Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->ALIGN_CENTER:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;
    .locals 1

    const-class v0, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    return-object p0
.end method

.method public static values()[Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;
    .locals 1

    sget-object v0, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->a:[Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    invoke-virtual {v0}, [Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    return-object v0
.end method
