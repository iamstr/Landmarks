//
//  LandmarkDetail.swift
//  AppleFollowAlong
//
//  Created by Abdisatar Mohamed on 03/09/2023.
//

import SwiftUI


struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
       var landmark: Landmark


       var landmarkIndex: Int {
           modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
       }

    var body: some View {
        ScrollView{
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    
                    .frame(height: 300)
                
                
                CircleImage(image: landmark.image)
                    .offset(y: -200)
                    .padding(.bottom, -200)
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
                
                
                Spacer()
            }
        }.ignoresSafeArea(edges: .top)
    }
}


struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()


        static var previews: some View {
            LandmarkDetail(landmark: modelData.landmarks[0])
                .environmentObject(modelData)
        }
}
