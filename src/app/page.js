import { createSupabaseServerComponentClient } from "@/util/supabaseAppRouterClient";
export const dynamic = "force-dynamic";

export default async function Home() {
  const supabase = createSupabaseServerComponentClient();

  const { data: plants, error } = await supabase
    .from("plants")
    .select("id, name, room");

  const { data: wateringHistory } = await supabase
    .from("watering_history")
    .select("created_at, plants (name)");

  return (
    <main className="container">
      <h2>
        List of Plants <span className="green ti ti-leaf"></span>
      </h2>
      <ul>
        {plants.map((plant) => {
          return (
            <li key={plant.id}>
              <strong clasName="green">{plant.name}</strong> / {plant.room}
            </li>
          );
        })}
      </ul>

      <h2>
        Watering History <span className="blue ti ti-bucket-droplet"></span>
      </h2>
      <table>
        <thead>
          <tr>
            <th>Plant</th>
            <th>Watered</th>
          </tr>
        </thead>
        <tbody>
          {wateringHistory.map((historyItem) => {
            return (
              <tr key={historyItem.created_at}>
                <td>{historyItem.plants.name}</td>
                <td>{historyItem.created_at}</td>
              </tr>
            );
          })}
        </tbody>
      </table>
    </main>
  );
}
