.class public abstract Lcom/android/camera/db/greendao/DaoMaster$OpenHelper;
.super Lorg/greenrobot/greendao/database/DatabaseOpenHelper;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/db/greendao/DaoMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const-string p0, "greenDAO"

    const-string v0, "Creating tables for schema version 6"

    .line 1
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/android/camera/db/greendao/DaoMaster;->createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method
