.class Lcom/android/server/MountService$5;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1230
    :try_start_0
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disabling UMS after cable disconnect : enabling ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsEnabling()Z
    invoke-static {v11}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsEnabling()Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1233
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v9, 0x5

    if-ge v3, v9, :cond_0

    .line 1234
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsEnabling()Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1240
    .end local v3           #i:I
    :cond_0
    const/4 v6, 0x0

    .line 1241
    .local v6, paths:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1242
    .local v8, states:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1244
    .local v1, count:I
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    :try_start_1
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1246
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    .line 1247
    new-array v9, v1, [Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 1248
    new-array v8, v1, [Ljava/lang/String;

    .line 1249
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1250
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v9

    aget-object v11, v6, v3

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1249
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1235
    .end local v1           #count:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #paths:[Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :cond_1
    const-wide/16 v9, 0x3e8

    :try_start_2
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 1236
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyShareAvailabilityChange -> waiting to finish ums connection..("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1252
    .restart local v1       #count:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #paths:[Ljava/lang/String;
    .restart local v8       #states:[Ljava/lang/String;
    :cond_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1254
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    .line 1255
    :try_start_4
    aget-object v5, v6, v3

    .line 1256
    .local v5, path:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v10, "ums"

    const/4 v11, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v9, v5, v10, v11}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1257
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v9, v5}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v7

    .local v7, rc:I
    if-eqz v7, :cond_3

    .line 1258
    const-string v9, "MountService"

    const-string v10, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1254
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1252
    .end local v3           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #rc:I
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1263
    .end local v1           #count:I
    .end local v6           #paths:[Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1264
    .local v2, ex:Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1266
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_4
    return-void
.end method
