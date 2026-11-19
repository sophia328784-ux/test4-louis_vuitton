.class public final enum Lcom/linecorp/linesdk/openchat/OpenChatCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008!\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
        "",
        "",
        "id",
        "I",
        "a",
        "()I",
        "resourceId",
        "b",
        "NotSelected",
        "School",
        "Friend",
        "Company",
        "Organization",
        "Region",
        "Baby",
        "Sports",
        "Game",
        "Book",
        "Movies",
        "Photo",
        "Art",
        "Animation",
        "Music",
        "Tv",
        "Celebrity",
        "Food",
        "Travel",
        "Pet",
        "Car",
        "Fashion",
        "Health",
        "Finance",
        "Study",
        "Etc",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Animation:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Art:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Baby:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Book:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Car:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Celebrity:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Company:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Etc:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Fashion:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Finance:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Food:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Friend:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Game:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Health:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Movies:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Music:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum NotSelected:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Organization:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Pet:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Photo:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Region:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum School:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Sports:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Study:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Travel:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Tv:Lcom/linecorp/linesdk/openchat/OpenChatCategory;


# instance fields
.field private final id:I

.field private final resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v0, 0x7f1412b1

    const-string v2, "NotSelected"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->NotSelected:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v0, 0x7f1412b7

    const-string v3, "School"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->School:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v3, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v0, 0x7f1412a6

    const-string v4, "Friend"

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Friend:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v4, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v0, 0x7f14129c

    const-string v5, "Company"

    const/4 v7, 0x3

    const/4 v8, 0x5

    invoke-direct {v4, v5, v7, v8, v0}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Company:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v5, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v0, 0x7f1412b2

    const-string v7, "Organization"

    const/4 v9, 0x4

    const/4 v10, 0x6

    invoke-direct {v5, v7, v9, v10, v0}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Organization:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v7, 0x7f1412b6

    const-string v9, "Region"

    const/16 v11, 0x8

    invoke-direct {v0, v9, v8, v11, v7}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Region:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v7, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v8, 0x1c

    const v9, 0x7f141297

    const-string v12, "Baby"

    invoke-direct {v7, v12, v10, v8, v9}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Baby:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v8, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v9, 0x7f1412bb

    const-string v10, "Sports"

    const/16 v12, 0x10

    invoke-direct {v8, v10, v6, v12, v9}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Sports:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v9, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v6, 0x7f1412a7

    const-string v10, "Game"

    const/16 v13, 0x11

    invoke-direct {v9, v10, v11, v13, v6}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Game:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v10, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v6, 0x1d

    const v11, 0x7f141299

    const-string v14, "Book"

    const/16 v15, 0x9

    invoke-direct {v10, v14, v15, v6, v11}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Book:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v11, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v6, 0x1e

    const v14, 0x7f1412af

    const-string v15, "Movies"

    const/16 v13, 0xa

    invoke-direct {v11, v15, v13, v6, v14}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Movies:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v6, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v13, 0x25

    const v14, 0x7f1412b4

    const-string v15, "Photo"

    const/16 v12, 0xb

    invoke-direct {v6, v15, v12, v13, v14}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Photo:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v13, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v14, 0x29

    const v15, 0x7f141295

    const-string v12, "Art"

    move-object/from16 v19, v0

    const/16 v0, 0xc

    invoke-direct {v13, v12, v0, v14, v15}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Art:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v14, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v12, 0x7f141294

    const-string v15, "Animation"

    const/16 v0, 0xd

    move-object/from16 v21, v1

    const/16 v1, 0x16

    invoke-direct {v14, v15, v0, v1, v12}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Animation:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v15, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v0, 0x21

    const v12, 0x7f1412b0

    const-string v1, "Music"

    move-object/from16 v23, v2

    const/16 v2, 0xe

    invoke-direct {v15, v1, v2, v0, v12}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Music:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v1, 0x7f1412bf

    const-string v2, "Tv"

    const/16 v12, 0xf

    move-object/from16 v24, v3

    const/16 v3, 0x18

    invoke-direct {v0, v2, v12, v3, v1}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Tv:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x1a

    const v12, 0x7f14129b

    const-string v3, "Celebrity"

    move-object/from16 v26, v0

    const/16 v0, 0x10

    invoke-direct {v1, v3, v0, v2, v12}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Celebrity:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Food"

    const v3, 0x7f1412a5

    move-object/from16 v17, v1

    const/16 v1, 0xc

    const/16 v12, 0x11

    invoke-direct {v0, v2, v12, v1, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Food:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x12

    const v3, 0x7f1412bd

    const-string v12, "Travel"

    invoke-direct {v1, v12, v2, v2, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Travel:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v3, 0x1b

    const v12, 0x7f1412b3

    move-object/from16 v16, v0

    const-string v0, "Pet"

    move-object/from16 v20, v1

    const/16 v1, 0x13

    invoke-direct {v2, v0, v1, v3, v12}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Pet:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v3, 0x7f14129a

    const-string v12, "Car"

    move-object/from16 v27, v2

    const/16 v2, 0x14

    invoke-direct {v0, v12, v2, v1, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Car:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v3, 0x15

    const v12, 0x7f1412a3

    move-object/from16 v28, v0

    const-string v0, "Fashion"

    invoke-direct {v1, v0, v3, v2, v12}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Fashion:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const v2, 0x7f1412a8

    const-string v3, "Health"

    const/16 v12, 0x17

    move-object/from16 v29, v1

    const/16 v1, 0x16

    invoke-direct {v0, v3, v1, v12, v2}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Health:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x28

    const v3, 0x7f1412a4

    move-object/from16 v22, v0

    const-string v0, "Finance"

    invoke-direct {v1, v0, v12, v2, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Finance:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Study"

    const v3, 0x7f1412bc

    move-object/from16 v18, v1

    const/16 v1, 0x18

    const/16 v12, 0xb

    invoke-direct {v0, v2, v1, v12, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Study:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x23

    const v3, 0x7f14129f

    const-string v12, "Etc"

    move-object/from16 v25, v0

    const/16 v0, 0x19

    invoke-direct {v1, v12, v0, v2, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Etc:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    move-object v12, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v20, v27

    move-object/from16 v24, v18

    move-object/from16 v23, v22

    move-object/from16 v22, v29

    move-object/from16 v18, v16

    move-object/from16 v16, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v28

    filled-new-array/range {v1 .. v26}, [Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->$VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->id:I

    iput p4, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->resourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/openchat/OpenChatCategory;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/openchat/OpenChatCategory;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->$VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->id:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->resourceId:I

    return p0
.end method
